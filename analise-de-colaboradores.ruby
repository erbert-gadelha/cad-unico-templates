{
    "name": "Análise de colaboradores",
    "description": "Análise de colaboradores",
    "group": "SUPERVISOR",
    "processStatus": [
        {
            "important": false,
            "terminalStatus": false,
            "statusMode": "NORMAL",
            "mainStream": true,
            "description": "Análise de colaborador não realizada",
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
            "description": "Análise de colaborador realizada",
            "limitValue": 3,
            "timeLimitRule": 10,
            "unitOfTimeType": "MINUTES",
            "subStatus": []
        }
    ],
    "tasks": [
        {
            "description": "Realizar Análise de Colaborador",
            "executionOrder": 1,
            "groupName": "SUPERVISOR",
            "currentStatus": "Análise de Colaborador não realizada",
            "whenTaskStatusIs": "COMPLETED",
            "processStatusGoesTo": [
                "Ronda realizada"
            ],
            "actions": [
                {
                    "displayOrder": 1,
                    "description": "Realizar Análise de Colaborador",
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
                            "description": "nome_supervisor",
                            "label": "Nome do Supervisor",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },
                        {
                            "description": "re_supervisor",
                            "label": "RE do Supervisor",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },




                        {
                            "description": "colaborador_nome",
                            "label": "Nome do colaborador avaliado",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },
                        {
                            "description": "colaborador_re",
                            "label": "RE do colaborador avaliado",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "TEXT"
                        },



                        {
                            "description": "colaborador_motivo_avaliacao",
                            "label": "Motivo da avaliação",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Promoção"
                                },
                                {
                                    "value": "Troca de Turno"
                                },
                                {
                                    "value": "Desligamento"
                                }
                            ]
                        },




                        {
                            "description": "colaborador_nota_avaliacao",
                            "label": "Nota de qualificação para o colaborador avaliado",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "0"
                                },
                                {
                                    "value": "1"
                                },
                                {
                                    "value": "2"
                                },
                                {
                                    "value": "3"
                                },
                                {
                                    "value": "4"
                                },
                                {
                                    "value": "5"
                                },
                                {
                                    "value": "6"
                                },
                                {
                                    "value": "7"
                                },
                                {
                                    "value": "8"
                                },
                                {
                                    "value": "9"
                                },
                                {
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "description": "colaborador_cracha_foto",
                            "label": "Foto do crachá do colaborador avaliado",
                            "mandatory": true,
                            "visible": true,
                            "fieldType": "PHOTO"
                        },
                        {
                            "description": "colaborador_tempo_colaboracao",
                            "label": "Quanto tempo o colaborador faz parte da empresa",
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
                            "description": "avaliacao_observacoes",
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