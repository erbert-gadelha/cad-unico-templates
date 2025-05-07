import requests
import csv


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
        "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJyajhCd21MZDNiTU9BampXZ1FVb05wSWFnMUtkRHBGY0RMTEdxOFlxZXlzIn0.eyJleHAiOjE3NDY1ODY1NTAsImlhdCI6MTc0NjU1MDU1MCwianRpIjoiM2IyMmU0OWMtNTZiYy00MmJmLWExOWEtZDI1NmE3NDE2ZTFhIiwiaXNzIjoiaHR0cHM6Ly9pZHAuZmliYm8uY28vcmVhbG1zL2NhZHVuaWNvIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImJiMmQ2ZTA4LWJkYmQtNDM1Ny1hMDY0LTgzYzUxYzY0ZTQ5YiIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZpYmJvIiwic2Vzc2lvbl9zdGF0ZSI6ImVmOTYzNmY5LTU1YzAtNGI4ZS05MTk0LWZlYzcxM2I3OTliYSIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJWSUVXX0FOQUxZVElDU19EQVNIQk9BUkQiLCJ1bWFfYXV0aG9yaXphdGlvbiIsImRlZmF1bHQtcm9sZXMtY2FkdW5pY28iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6ImVtYWlsIHByb2ZpbGUiLCJzaWQiOiJlZjk2MzZmOS01NWMwLTRiOGUtOTE5NC1mZWM3MTNiNzk5YmEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZG9lc0l0VXNlUHJvY2Vzc0luc3RhbmNlRW1wbG95ZWUiOmZhbHNlLCJuYW1lIjoiU2xheXRob24gR2xleXNvbiIsInByZWZlcnJlZF91c2VybmFtZSI6InNsYXl0aG9uIiwiZ2l2ZW5fbmFtZSI6IlNsYXl0aG9uIiwiZmFtaWx5X25hbWUiOiJHbGV5c29uIiwiZW1haWwiOiJzbGF5dGhvbkBmaWJiby5jbyJ9.Cx34BlJJkI_KFb4mXQtvZPnmQ4Bb45fKFphJYsr0JWBprYpXSUtl4u2CuY3M6I1SHJioBchFgnYhfHFN_n_lrJZBeyrpMI_-ETp2YijC4Qis-gn7aT6bG-Yt1fD0mH6RifWGuBX_kiLKvgW6SP2ng4oPfPz2lADhdMtLAJSoBIZtvqrv9AxXimdzFE4ehY_VPRuagAw_7JklpKBY7q5D-xKC80Ms4OCWKqoirQYNm72K6FWKHy_yCb3t1Gu1tqggeEM0zwqj-FFpgg0pGWFAbW9nQAKRUKsAJV8vsEpDiPbNjycInnOnOd_gDAAdkXtHBuLZE756Z_CL1-lXDTGlSg",
        "Content-Type": "application/json"
    }

    response = requests.post(host_, json=body, headers=headers, verify=False)
    print(f'json: {response.json}')
    print(f'text: {response.text}')
    return response.status_code




def instantiateLiderProcess():
    linhas = readCSV('local-usuario.csv')
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.coaaa"
    process_id = 62
    task_id = 56

    for i in range(1, len(linhas)):
        line = linhas[i]
        body = generateBody(line[3], line[0], task_id)

        print(body)
        #status = postHttp(f"{host}/process-instances/{process_id}", body)    
        #if status >= 300:
        #    print(f"[{status}] deu ruim, chefe.")
        #    break

def instantiateSupervisorProcess():
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.co"
    process_id = 65
    task_id = 59

    supervisores = [
        {   'user': 12, 'location': 2    },     # supervisor.1
        {   'user': 103, 'location': 2   },    # supervisor.2
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
            print(f"[{status}] deu ruim, chefe.")
            break


instantiateLiderProcess()

#instantiateSupervisorProcess()