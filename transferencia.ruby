{
    "name": "Transferência",
    "description": "Transferência",
    "group": "LIDER",
    "processStatus": [
        {
            "important": false,
            "terminalStatus": false,
            "statusMode": "NORMAL",
            "mainStream": true,
            "description": "Transferência não realizada",
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
            "description": "Transferência realizada",
            "limitValue": 3,
            "timeLimitRule": 10,
            "unitOfTimeType": "MINUTES",
            "subStatus": []
        }
    ],
    "tasks": [
        {
            "description": "Realizar Transferência",
            "executionOrder": 1,
            "groupName": "LIDER",
            "currentStatus": "Transferência não realizada",
            "whenTaskStatusIs": "COMPLETED",
            "processStatusGoesTo": [
                "Ronda realizada"
            ],
            "actions": [
                {
                    "displayOrder": 1,
                    "description": "Realizar transferência",
                    "possibleNextActions": [],
                    "setTaskStatus": "COMPLETED",
                    "isMobile": true,
                    "events": [],
                    "fields": [
                        {
                            "description": "qr_code_local",
                            "label": "Leitura do QR Code Local",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "QR_CODE"
                        },
                        {
                            "description": "local",
                            "label": "Local",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "-recebe texto do QRCode lido-",
                                    "sourceFieldDescription": "qr_code_local",
                                    "fieldRuleActionType": "RECEIVE_VALUE"
                                }
                            ]
                        },
                        {
                            "description": "quebra_tela",
                            "label": "quebra_tela",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "SCREEN_BREAKING"
                        },
                        {
                            "description": "geo",
                            "label": "Geo",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "GEOLOCATION"
                        },




                        {
                            "description": "lider_nome",
                            "label": "Nome do Supervisor",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },
                        {
                            "description": "lider_re",
                            "label": "RE do Supervisor",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },



                        {
                            "description": "transferencia_origem_da_solicitacao",
                            "label": "Origem da solicitação da transferência ",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },
                        {
                            "description": "transferencia_periodo",
                            "label": "Período da transferência",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Manhã"
                                },
                                {
                                    "value": "Tarde"
                                }
                            ]
                        },



                        {
                            "description": "colaboradortransferido_nome",
                            "label": "Nome o colaborador transferido",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT",
                        },
                        {
                            "description": "colaboradortransferido_re",
                            "label": "RE do colaborador Transferido",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },
                        {
                            "description": "colaboradortransferido_cracha_foto",
                            "label": "Foto do Crachá do colaborador a ser Transferido",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "PHOTO"
                        },



                        {
                            "description": "transferencia_local",
                            "label": "Local da Transferência",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },


                        
                        {
                            "description": "gravar_audio",
                            "label": "Gravar audio",
                            "mandatory": false,
                            "visible": true,
                            "fieldType": "AUDIO"
                        },
                        {
                            "description": "observacoes",
                            "label": "Observações?",
                            "mandatory": false,
                            "visible": true,
                            "fieldType": "TEXT"
                        },




                        {
                            "description": "assinatura_supervisor",
                            "label": "Assinatura do supervisor",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "SIGNATURE"
                        }
                    ]
                }
            ]
        }
    ]
}