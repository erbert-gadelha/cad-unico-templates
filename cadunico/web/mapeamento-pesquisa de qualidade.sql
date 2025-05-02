-- PRECISA TESTAR SE ESSA FORMATAÇÃO QUEBROU ALGO

----- SURVEY
    INSERT INTO cadunico.tb_survey
    ("uuid", "name", description, created_at)
    VALUES(gen_random_uuid(), 'Pesquisa de Qualidade', 'Pesquisa de Qualidade', now());

----- FIELDS
    ----- 01 - NOME DO RESPONSAVEL
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'responsavel_nome', 
        'Nome do responsável por responder a pesquisa', 
        true, 
        'TEXT', 
        true);
    ----- 02 - RE DO RESPONSAVEL
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'responsavel_re', 
        'R.E / Matrícula do responsável pelo preenchimento', 
        true, 
        'TEXT', 
        true);
    ----- 03 - PRODUTIVIDADE DOS COLABORADORES
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'produtividade_dos_colaboradores', 
        'Como classifica a produtividade dos colaboradores dos entrevistadores nas unidades?', 
        true, 
        'LIST', 
        true);   
    ----- 04 - FREQUENCIA DOS COLABORADORES
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'frequencia_dos_tecnicos', 
        'Como classifica a quantidade frequência dos técnicos de informática no ambiente de trabalho no último mês?', 
        true, 
        'LIST', 
        true);
    ----- 05 - PRODUTIVIDADE DOS COLABORADORES DE INFORMATICA
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'produtividade_colaboradores_informatica', 
        'Como classifica a produtividade dos colaboradores de informática que trabalham de maneira presencial na Smards?', 
        true, 
        'LIST', 
        true);     
    ----- 06 -  CONHECIMENTO DOS COLABORADORES DE INFORMATICA
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'conhecimento_colaboradores_informatica', 
        'Como classifica o nivél de conhecimento técnico dos colaboradores de informática nas atividades executadas por eles?', 
        true, 
        'LIST', 
        true);
    ----- 07 -  VISITAS NAS SMARDS
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'visitas_nas_smards', 
        'Quantas visitas foram executadas por mês na Smards?', 
        true, 
        'LIST', 
        true);
    ----- 08 -  OBSERVAÇÕES
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'responsavel_nome', 
        'Observações?', 
        false, 
        'TEXT', 
        true);

----- FIELDS ANSWERS
    ----- 03 - PRODUTIVIDADE DOS COLABORADORES
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 	ID_produtividade_dos_colaboradores);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 	ID_produtividade_dos_colaboradores);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 	ID_produtividade_dos_colaboradores);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 	ID_produtividade_dos_colaboradores);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 	ID_produtividade_dos_colaboradores);    
    ----- 04 -  FREQUENCIA DOS COLABORADORES
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 	ID_frequencia_dos_tecnicos);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 	ID_frequencia_dos_tecnicos);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 	ID_frequencia_dos_tecnicos);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 	ID_frequencia_dos_tecnicos);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 	ID_frequencia_dos_tecnicos);
    ----- 05 - PRODUTIVIDADE DOS COLABORADORES DE INFORMATICA
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 	ID_produtividade_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 	ID_produtividade_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 	ID_produtividade_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 	ID_produtividade_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 	ID_produtividade_colaboradores_informatica);
    ----- 06 - CONHECIMENTO DOS COLABORADORES DE INFORMATICA
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 	ID_conhecimento_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 	ID_conhecimento_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 	ID_conhecimento_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 	ID_conhecimento_colaboradores_informatica);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 	ID_conhecimento_colaboradores_informatica);
    ----- 07 - VISITAS NAS SMARDS
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Não executou visitas', 	ID_visitas_nas_smards);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '01 por semana', 	ID_visitas_nas_smards);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Abaixo de 10', 	ID_visitas_nas_smards);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Acima de 10', 	ID_visitas_nas_smards);

----- SURVEY FIELDS
    INSERT INTO cadunico.tb_survey_field
    (survey_id, field_id, display_order)
    VALUES	(2, ID_responsavel_nome, 1),
            (2, ID_responsavel_re, 2),
            (2, ID_produtividade_dos_colaboradores, 3),
            (2, ID_frequencia_dos_tecnicos, 4),
            (2, ID_produtividade_colaboradores_informatica, 5),
            (2, ID_conhecimento_colaboradores_informatica, 6),
            (2, ID_visitas_nas_smards, 7),
            (2, ID_observacoes, 8);
