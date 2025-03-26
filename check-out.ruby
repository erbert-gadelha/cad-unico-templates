{
    "name": "Check Out",
    "description": "Check Out",
    "group": "LIDER",
    "processStatus": [
        {
            "important": false,
            "terminalStatus": false,
            "statusMode": "NORMAL",
            "mainStream": true,
            "description": "Check Out não realizado",
            "limitValue": 3,
            "timeLimitRule": 10,
            "unitOfTimeType": "MINUTES",
            "subStatus": []
        },
        {
            "important": false,
            "terminalStatus": false,
            "statusMode": "NORMAL",
            "mainStream": true,
            "description": "Check Out realizado",
            "limitValue": 3,
            "timeLimitRule": 10,
            "unitOfTimeType": "MINUTES",
            "subStatus": []
        }
    ],
    "tasks": [
        {
            "executionOrder": 1,
            "description": "Check Out",
            "whenTaskStatusIs": "COMPLETED",
            "groupName": "LIDER",
            "currentStatus": "Ronda não realizada",
            "processStatusGoesTo": [
                "Check Out realizado"
            ],
            "actions": [
                {
                    "displayOrder": 1,
                    "description": "Realizar Check Out",
                    "possibleNextActions": [],
                    "setTaskStatus": "COMPLETED",
                    "isMobile": true,
                    "events": [],
                    "fields": [
                        {
                            "description": "geo",
                            "label": "Geo",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "GEOLOCATION"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "nome_colaborador",
                            "label": "Nome do Colaborador",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "re_colabotador",
                            "label": "RE do Colaborador",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "quantas_estacoes",
                            "label": "Quantas estações de cadastro em operação?",
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Todas"
                                },
                                {
                                    "value": "Outras"
                                }
                            ]
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "descricao_cadastro_operacao",
                            "label": "Quantas estações de cadastro em operação? Descreva",
                            "fieldType": "TEXT",
                            "fieldRules": [
                              {
                                "description": "Exibir campo se a resposta for? Outras",
                                "fieldRuleActionType": "DISPLAY_FIELD",
                                "sourceFieldDescription": "quantas_estacoes"
                              }
                            ]
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "quantidade_cadastros_finalizados",
                            "label": "Quantos cadastros finalizados?",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "quantidade_atendimentos_realizados",
                            "label": "Quantos atendimentos realizados?",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "gravar_audio",
                            "label": "Gravar Audio?",
                            "fieldType": "AUDIO"
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "observacoes",
                            "label": "Observações?",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "assinatura_colaborador",
                            "label": "Assinatura do colaborador",
                            "fieldType": "SIGNATURE"
                        }
                    ]
                }
            ]
        }
    ]
}