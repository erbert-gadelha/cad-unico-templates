import requests
import csv
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


def readCSV(fileName):
    linhas_ = []
    with open(fileName, newline='', encoding='utf-8') as csvfile:
        leitor = csv.reader(csvfile, delimiter=',')
        for linha in leitor:
            linhas_.append(linha)
    return linhas_

def generateBody(employee_id:int, location_id:int, task_id:int):
    return { "employees": [{"id": employee_id, "taskIds": [task_id]}], "location": {"id": location_id }, "isAutomatic": True }

def postHttp(host_:str, body) -> int:
    headers = {
        "Authorization": "Bearer access_token",
        "Content-Type": "application/json"
    }

    response = requests.post(host_, json=body, headers=headers, verify=False)

    if response.status_code >= 300:
        print(f'json: {response.json}')
        print(f'text: {response.text}')

    return response.status_code




def instantiateLiderProcess():
    linhas = readCSV('local-usuario.csv')
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.co_REMOVER_ESSE_TEXTO"
    process_id = 64
    task_id = 58

    ## 1 - 92
    for i in range(1, 93):
        line = linhas[i]
        employee_id = int(line[3])
        location_id = int(line[0])

        # PULA CRAS.ANHANGUERA, POIS SEU ID É 1
        #if(employee_id == 1):
        #    continue

        body = generateBody(employee_id, location_id, task_id)
        print(f'{i}: ({line[4]}) \t {body}')

        status = postHttp(f"{host}/process-instances/{process_id}", body)    
        if status >= 300:
            print(f"[{status}] deu ruim, chefe.")
            break

def instantiateSupervisorProcess():
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.coaaaaa"
    process_id = 65
    task_id = 59

    supervisores = [
        {   'user': 12, 'location': 2    },     # supervisor.1
        {   'user': 103, 'location': 2   },     # supervisor.2
        {   'user': 13, 'location': 2    },     # supervisor.3
        {   'user': 14, 'location': 2    },     # supervisor.4
        {   'user': 15, 'location': 2    },     # supervisor.5

        {   'user': 16, 'location': 2    },     # supervisor.6
        {   'user': 17, 'location': 2    },     # supervisor.7
        {   'user': 18, 'location': 2    },     # supervisor.8
        {   'user': 19, 'location': 2    },     # supervisor.9
        {   'user': 20, 'location': 2    },     # supervisor.10

        {   'user': 104, 'location': 2    },    # supervisor.11
        {   'user': 105, 'location': 2    },    # supervisor.12
        {   'user': 111, 'location': 2    },    # supervisor.13
    ]

    for supervisor in supervisores:
        body = generateBody(supervisor['user'], supervisor['location'], task_id)
        status = postHttp(f"{host}/process-instances/{process_id}", body)    
        if status >= 300:
            print(f"/n/n[{status}] deu ruim, chefe./n/n")
            break


instantiateLiderProcess()

#instantiateSupervisorProcess()