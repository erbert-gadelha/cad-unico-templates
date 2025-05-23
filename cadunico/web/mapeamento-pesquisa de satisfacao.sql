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
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', 7238);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', 7238);
    ----- 02 - EXPERIENCIA DO CADASTRAMENTO

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 7239);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 7239);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 7239);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 7239);

        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 7239);
    ----- 04 - AVALIAÇÃO DO CADASTRADOR
        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ótimo', 7241);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bom', 7241);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Regular', 7241);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ruim', 7241);

        INSERT INTO cadunico.tb_field_value
        ("uuid" , created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Péssimo', 7241);


----- FIELD RULES
    ----- 03 - DESCRICAO DA CITAÇÃO     (DEPENDE DE 02)
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Péssimo', 'experiencia_cadastramento', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
        (field_id, field_rule_id)
        VALUES(7239, 6941);


----- SURVEY FIELDS
    INSERT INTO cadunico.tb_survey_field
    (survey_id, field_id, display_order)
    VALUES  (1, 7238, 1),
            (1, 7239, 2),
            (1, 7240, 3),
            (1, 7241, 4);


