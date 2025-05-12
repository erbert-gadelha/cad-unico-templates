----- SURVEY
    INSERT INTO cadunico.tb_survey
    ("uuid", "name", description, created_at)
    VALUES(gen_random_uuid(), 'Pesquisa de Satisfação', 'Pesquisa de Satisfação para o gestor saber o desempenho do serviço', now());


----- FIELDS
    ----- 01 - NUMERO DA MESA DE CADASTRAMENTO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'numero_mesa_cadastramento', 
        'Qual o número da mesa de cadastramento que você está?', 
        true, 
        'LIST', 
        true);    
    ----- 02 - EXPERIENCIA DO CADASTRAMENTO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'experiencia_cadastramento', 
        'Como está sendo o cadastramento?', 
        true, 
        'LIST', 
        true);
    ----- 03 - DESCRICAO DA CITAÇÃO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'descricao_citacao', 
        'Descreva a citação?', 
        true, 
        'TEXT', 
        true);

    ----- 04 - AVALIAÇÃO DO CADASTRADOR
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'avaliacao_cadastrador', 
        'Como avalia o cadastrador?', 
        true, 
        'LIST', 
        true);


----- FIELDS ANSWERS
    ----- 01 - NUMERO DA MESA DE CADASTRAMENTO
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', id_numero_mesa_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', id_numero_mesa_cadastramento);
    ----- 02 - EXPERIENCIA DO CADASTRAMENTO
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', id_experiencia_cadastramento);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', id_experiencia_cadastramento);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', id_experiencia_cadastramento);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', id_experiencia_cadastramento);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', id_experiencia_cadastramento);
    ----- 04 - AVALIAÇÃO DO CADASTRADOR
        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', id_avaliacao_cadastrador);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', id_avaliacao_cadastrador);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', id_avaliacao_cadastrador);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', id_avaliacao_cadastrador);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', id_avaliacao_cadastrador);


----- FIELD RULES
    ----- 03 - DESCRICAO DA CITAÇÃO     (DEPENDE DE 02)
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Péssimo', 'experiencia_cadastramento', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
        (field_id, field_rule_id)
        VALUES(id_descricao_citacao, field_rule_id);


----- SURVEY FIELDS
    INSERT INTO cadunico.tb_survey_field
    (survey_id, field_id, display_order)
    VALUES  (1, id_numero_mesa_cadastramento, 1),
            (1, id_experiencia_cadastramento, 2),
            (1, id_descricao_citacao, 3),
            (1, id_avaliacao_cadastrador, 4);


