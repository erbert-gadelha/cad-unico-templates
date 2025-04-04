{
    "name": "Check In",
    "description": "Check In",
    "group": "LIDER",
    "processStatus": [
        {
            "important": false,
            "terminalStatus": false,
            "statusMode": "NORMAL",
            "mainStream": true,
            "description": "Check In não realizado",
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
            "description": "Check In realizado",
            "limitValue": 3,
            "timeLimitRule": 10,
            "unitOfTimeType": "MINUTES",
            "subStatus": []
        }
    ],
    "tasks": [
        {
            "description": "Check In",
            "executionOrder": 1,
            "whenTaskStatusIs": "COMPLETED",
            "groupName": "LIDER",
            "processStatusGoesTo": [
                "Check In realizado"
            ],
            "currentStatus": "Check In não realizado",
            "actions": [
                {
                    "displayOrder": 1,
                    "description": "Realizar Check In",
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
                            "description": "re_colaborador",
                            "label": "RE do Colaborador",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "periodo",
                            "label": "Período",
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
                            "mandatory": false,
                            "visible": true,
                            "description": "quantidade_estacoes",
                            "label": "Quantas estações em funcionamento?",
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Todas"
                                },
                                {
                                    "value": "Escrita por extenso"
                                }
                            ]
                        },


                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "estacoes_escrita",
                            "label": "Descrição das estações em funcionamento",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? Escrita por extenso",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_estacoes"
                                }
                            ]
                        },


                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "condicao_funcionamento_estacoes",
                            "label": "Condição do funcionamento das estações",
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Pleno funcionamento"
                                },
                                {
                                    "value": "Funcionamento precário"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_funcionamento",
                            "label": "Descrição do funcionamento",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? Funcionamento precário",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "condicao_funcionamento_estacoes"
                                }
                            ]
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "fora_de_funcionamento",
                            "label": "Fora de funcionamento",
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Problemas no terminal"
                                },
                                {
                                    "value": "Ausência do link internet"
                                },
                                {
                                    "value": "Falta de colaborador"
                                },
                                {
                                    "value": "Outros"
                                }
                            ]
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "descricao_problema",
                            "label": "Descreva o problema",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? Outros",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "fora_de_funcionamento"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "existencia_ocorrencias",
                            "label": "Ocorrência(s) a informar?",
                            "fieldType": "BOOLEAN"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "quantidade_ocorrencias",
                            "label": "Quantidade de ocorrências",
                            "fieldType": "LIST",
                            "fieldValues": [
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
                                }
                            ],
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? Sim",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "existencia_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_1",
                            "label": "Descrição da ocorrência (1)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_1",
                            "label": "Foto da ocorrência (1)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_2",
                            "label": "Descrição da ocorrência (2)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_2",
                            "label": "Foto da ocorrência (2)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_3",
                            "label": "Descrição da ocorrência (3)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_3",
                            "label": "Foto da ocorrência (3)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_4",
                            "label": "Descrição da ocorrência (4)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_4",
                            "label": "Foto da ocorrência (4)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_5",
                            "label": "Descrição da ocorrência (5)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_5",
                            "label": "Foto da ocorrência (5)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 5",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_1_2",
                            "label": "Descrição da ocorrência (1)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_1_2",
                            "label": "Foto da ocorrência (1)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_1_3",
                            "label": "Descrição da ocorrência (1)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_1_3",
                            "label": "Foto da ocorrência (1)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_1_4",
                            "label": "Descrição da ocorrência (1)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 2",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_1_4",
                            "label": "Foto da ocorrência (1)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 2",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_1_5",
                            "label": "Descrição da ocorrência (1)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 1",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_1_5",
                            "label": "Foto da ocorrência (1)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 1",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_2_2",
                            "label": "Descrição da ocorrência (2)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_2_2",
                            "label": "Foto da ocorrência (2)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_2_3",
                            "label": "Descrição da ocorrência (2)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_2_3",
                            "label": "Foto da ocorrência (2)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_2_4",
                            "label": "Descrição da ocorrência (2)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 2",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_2_4",
                            "label": "Foto da ocorrência (2)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 2",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_3_2",
                            "label": "Descrição da ocorrência (3)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "visible": true,
                            "description": "foto_ocorrencia_3_2",
                            "label": "Foto da ocorrência (3)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_3_3",
                            "label": "Descrição da ocorrência (3)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_3_3",
                            "label": "Foto da ocorrência (3)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 3",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "descricao_ocorrencia_4_2",
                            "label": "Descrição da ocorrência (4)",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "foto_ocorrencia_4_2",
                            "label": "Foto da ocorrência (4)",
                            "fieldType": "PHOTO",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? 4",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "quantidade_ocorrencias"
                                }
                            ]
                        },
                        {
                            "visible": true,
                            "description": "interacao_gestor",
                            "label": "Houve interação com o gestor local da unidade sobre a ocorrência?",
                            "fieldType": "LIST",
                            "fieldValues": [
                                {
                                    "value": "Sim"
                                },
                                {
                                    "value": "Não"
                                },
                                {
                                    "value": "Não se aplica"
                                }
                            ]
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "justificativa_nao_interacao",
                            "label": "Justificativa por não avisar ao gestor",
                            "fieldType": "TEXT",
                            "fieldRules": [
                                {
                                    "description": "Exibir campo se a resposta for? Não",
                                    "fieldRuleActionType": "DISPLAY_FIELD",
                                    "sourceFieldDescription": "interacao_gestor"
                                }
                            ]
                        },
                        {
                            "mandatory": false,
                            "visible": true,
                            "description": "gravar_audio",
                            "label": "Gravar Audio",
                            "fieldType": "AUDIO"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "oberservacoes",
                            "label": "Observações",
                            "fieldType": "TEXT"
                        },
                        {
                            "mandatory": true,
                            "visible": true,
                            "description": "assinatura_colaborador",
                            "label": "Assinatura do Colaborador",
                            "fieldType": "SIGNATURE"
                        }
                    ]
                }
            ]
        }
    ]
}