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
        "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJyajhCd21MZDNiTU9BampXZ1FVb05wSWFnMUtkRHBGY0RMTEdxOFlxZXlzIn0.eyJleHAiOjE3Nzk1NDM4MjcsImlhdCI6MTc0ODAwNzgyNywianRpIjoiNDY1YzE3ZjUtMzg0Ny00ZTU1LWE1YTUtNDlkZTNhN2ZhZjRjIiwiaXNzIjoiaHR0cHM6Ly9pZHAuZmliYm8uY28vcmVhbG1zL2NhZHVuaWNvIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImJiMmQ2ZTA4LWJkYmQtNDM1Ny1hMDY0LTgzYzUxYzY0ZTQ5YiIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZpYmJvIiwic2Vzc2lvbl9zdGF0ZSI6ImI0ZGYzMTJjLTY3MjAtNDY5OC1hZGQ4LWI0NmI4OTI4MWMxZCIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJWSUVXX0FOQUxZVElDU19EQVNIQk9BUkQiLCJ1bWFfYXV0aG9yaXphdGlvbiIsImRlZmF1bHQtcm9sZXMtY2FkdW5pY28iLCJWSUVXX1BFU1FVSVNBX1FVQUxJREFERSJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgcHJvZmlsZSIsInNpZCI6ImI0ZGYzMTJjLTY3MjAtNDY5OC1hZGQ4LWI0NmI4OTI4MWMxZCIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJkb2VzSXRVc2VQcm9jZXNzSW5zdGFuY2VFbXBsb3llZSI6dHJ1ZSwibmFtZSI6IlNsYXl0aG9uIEdsZXlzb24iLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJzbGF5dGhvbiIsImdpdmVuX25hbWUiOiJTbGF5dGhvbiIsImZhbWlseV9uYW1lIjoiR2xleXNvbiIsImVtYWlsIjoic2xheXRob25AZmliYm8uY28ifQ.ifFshNRhDg87C1m3QJK8JBlDkeNNYbzrYG3-TQ1wYPXMTmU2sHIzIrwzO0jWGwMY-L2dWVwrEemzkXzf2YtTyL5ktew74lyfvZRL-hAVT3qUAEl_OCB9zjmds1Ps6prr5zXuZrgNR8WCUCFbbJVYATK6Me9OBgmlrWeVbVnQMTMSt_sYdPHTc8YHaE1CUNrlbDA1DiZUP9eQDFvXEqZhVhJ2U-KpWyo6Y3Sc-iPjJ-4_V9gus6OANOR7zf6aDAIy1L4CWgHTXWDJTxgEORQDtAxBzN7striR0TUUUlSgE2KkucNZaC3COQTqpF67nU0kuWYbHubTQ9_43FGVXevD6g",
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
    host = f"https://api.fibbo.co----"
    process_id = 65
    task_id = 59

    ## 1 - 92
    for i in range(75, 93):
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
    # host = f"http://localhost:8080"
    host = f"https://api.fibbo.co------"
    process_id = 66
    task_id = 60

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


# instantiateLiderProcess()

instantiateSupervisorProcess()

