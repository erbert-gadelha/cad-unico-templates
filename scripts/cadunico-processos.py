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
        "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJyajhCd21MZDNiTU9BampXZ1FVb05wSWFnMUtkRHBGY0RMTEdxOFlxZXlzIn0.eyJleHAiOjE3NDY2NTQ2MTQsImlhdCI6MTc0NjYxODYxNCwianRpIjoiNGRlNWI1ZmQtNDU1Yi00YzMzLTlkNzktOTBjYzcxMWFmY2QxIiwiaXNzIjoiaHR0cHM6Ly9pZHAuZmliYm8uY28vcmVhbG1zL2NhZHVuaWNvIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImJiMmQ2ZTA4LWJkYmQtNDM1Ny1hMDY0LTgzYzUxYzY0ZTQ5YiIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZpYmJvIiwic2Vzc2lvbl9zdGF0ZSI6ImUzMGQ1OGU5LTU5ZWUtNGNhYi05Y2FmLWMyOTkxNjA4ZTg5MSIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJWSUVXX0FOQUxZVElDU19EQVNIQk9BUkQiLCJ1bWFfYXV0aG9yaXphdGlvbiIsImRlZmF1bHQtcm9sZXMtY2FkdW5pY28iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6ImVtYWlsIHByb2ZpbGUiLCJzaWQiOiJlMzBkNThlOS01OWVlLTRjYWItOWNhZi1jMjk5MTYwOGU4OTEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZG9lc0l0VXNlUHJvY2Vzc0luc3RhbmNlRW1wbG95ZWUiOnRydWUsIm5hbWUiOiJTbGF5dGhvbiBHbGV5c29uIiwicHJlZmVycmVkX3VzZXJuYW1lIjoic2xheXRob24iLCJnaXZlbl9uYW1lIjoiU2xheXRob24iLCJmYW1pbHlfbmFtZSI6IkdsZXlzb24iLCJlbWFpbCI6InNsYXl0aG9uQGZpYmJvLmNvIn0.uhZJb0mGAAZyBsWB17Ydp33lBbxvZwN4nK3mpmOk0XlxiGwDFs7U3FYSGn6V8eKCt69NSOwc9RAXK0AhF6NUZaJmTgTtpX8L89b-nd5hOiAy6VjFbcOJ9EQJAhyKLomt4ImgrLtRSIOiYK0LPsok4vWz3j-IgfON_e2xqlhhTCFiTaLTtURHPv7JHaml5buVuGM962_ndOo5rKOT6oTos4wINMHbtlHTXYHUG8e3KDl0cKQzN5lSEQXaQRSpAlbbnKitFfMRGVWhryF2qniMn5hNJ7y9Fsfsvth9fnmqs2FpLqAFOvwm9a6diyEpZuIbcGKXBec1DuhH6QdjiC-pxQ",
        "Content-Type": "application/json"
    }

    response = requests.post(host_, json=body, headers=headers, verify=False)
    print(f'json: {response.json}')
    print(f'text: {response.text}')
    return response.status_code




def instantiateLiderProcess():
    linhas = readCSV('local-usuario.csv')
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.coaaaa"
    process_id = 62
    task_id = 56

    # for i in range(20, len(linhas)):
    for i in range(20, 21):
        line = linhas[i]
        body = generateBody(line[3], line[0], task_id)

        print(body)
        status = postHttp(f"{host}/process-instances/{process_id}", body)    
        if status >= 300:
            print("")
            print(f"[{status}] deu ruim, chefe.")
            break

def instantiateSupervisorProcess():
    #host = f"http://0.0.0.0:8080"
    host = f"https://api.fibbo.coaaaaa"
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
            print(f"/n/n[{status}] deu ruim, chefe./n/n")
            break


instantiateLiderProcess()

#instantiateSupervisorProcess()