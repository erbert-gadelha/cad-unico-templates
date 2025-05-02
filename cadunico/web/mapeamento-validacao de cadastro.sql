
----- SURVEY
    INSERT INTO cadunico.tb_survey
    ("uuid", "name", description, created_at)
    VALUES(gen_random_uuid(), 'Validação de Cadastro', 'Validação de Cadastro', now());


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
        'Nome do responsável pela validação', 
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
        'R.E / Matrícula do responsável pela validação', 
        true, 
        'TEXT', 
        true);
    ----- 03 - POSTO DE TRABALHO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'posto_de_trabalho', 
        'Posto de Trabalho', 
        true, 
        'LIST', 
        true);
    ----- 04 - NÚMERO DA ESTAÇÃO ONDE OCORREU A ENTREVISTA
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'estacao_da_entrevista', 
        'Qual o número da estação onde ocorreu a entrevista?', 
        true, 
        'LIST', 
        true);
    ----- 05 - TIPO DO CADASTRAMENTO REALIZADO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'tipo_do_cadastramento', 
        'Tipo do cadastro realizado', 
        true, 
        'LIST', 
        true);
    ----- 06 - CLASSIFICAÇÃO DA ATIVIDADE
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'classificacao_da_atividade', 
        'Classificação da Atividade', 
        true, 
        'LIST', 
        true);
    ----- 07 - NOME DO ENTREVISTADO
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'nome_do_entrevistado', 
        'Nome do Entrevistado', 
        true, 
        'TEXT', 
        true);
    ----- 08 - HORÁRIO DA ENTREVISTA
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES(
        gen_random_uuid(), 
        now(), 
        NULL, 
        NULL, 
        'horario_da_entrevista', 
        'Horário da Entrevista', 
        true, 
        'TIME', 
        true);


----- FIELDS ANSWERS
    ----- 03 - POSTO DE TRABALHO
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Anhanguera', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Aricanduva', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Arthur Alvim', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bela Vista', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Brasilândia I', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Brasilândia II', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Brasilândia III', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Butantã (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Butantã (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cachoeirinha', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Campo Limpo (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Campo Limpo (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Capão Redondo', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Capela do Socorro (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Capela do Socorro (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Casa Verde', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Centro Oeste', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'CIC Grajau', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Ademar (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Ademar I (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Ademar II (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Lider', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Tiradentes', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cidade Tiradentes', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ermelino Matarazzo (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ermelino Matarazzo (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Freguesia do Ó (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Freguesia do Ó (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Grajau', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Guaianases (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Guaianases (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Iguatemi', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ipiranga (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Ipiranga (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Itaim Paulista (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Itaim Paulista I (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Itaim Paulista II (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Itaquera (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Itaquera (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jabaquara (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jabaquara (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jaçanã (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jaçanã (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jaraguá', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jd. Angela', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Jd. São Luiz', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Lajeado', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Lapa (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Lapa (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'M'' Boi Mirim (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'M'' Boi Mirim (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Marsilac', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Mooca (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Mooca (Centro Pop)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Mooca (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Norte (Móvel)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Parelheiros (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Parelheiros (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Pedreira', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Penha (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Penha (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Perus (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Perus (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Pinheiros', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Pirituba', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santana (Centro Pop)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santana (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santana (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santo Amaro (Centro Pop)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santo Amaro (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Santo Amaro (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'São Mateus (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'São Mateus (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'São Miguel Paulista (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'São Miguel Paulista (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Sapopemba', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Sé (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Sé 24Horas (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SMADS/GSUAS/CGB', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Sta Cecilia', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Sul (Móvel)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Tremembé', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Andrade', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Curuçá', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Maria (Centro Pop)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Maria (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Maria (Descomplica)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Mariana', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Medeiros', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Prudente (CRAS)', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Vila Prudente (Descomplica)', id_estacao_da_entrevista);
        
    ----- 04 - NÚMERO DA ESTAÇÃO ONDE OCORREU A ENTREVISTA
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', id_estacao_da_entrevista);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', id_estacao_da_entrevista);
    ----- 05 - TIPO DO CADASTRAMENTO REALIZADO
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Minha casa minha vida', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Tarifa social da enel', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Tarifa social da sabesp', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Cisterna', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Idjovem', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Bolsa Família', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Leve Leite', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Para Curso', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Intenção de Concurso', id_tipo_do_cadastramento);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Passe Livre', id_tipo_do_cadastramento);
    ----- 06 - CLASSIFICAÇÃO DA ATIVIDADE
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Novo Cadastro', id_classificacao_da_atividade);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Atualização do cadastro ', id_classificacao_da_atividade);
        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Atendimento', id_classificacao_da_atividade);


----- SURVEY FIELDS
    INSERT INTO cadunico.tb_survey_field
    (survey_id, field_id, display_order)
    VALUES  (new_survey_id, id_responsavel_nome, 1),
            (new_survey_id, id_responsavel_re, 2),
            (new_survey_id, id_posto_de_trabalho, 3),
            (new_survey_id, id_estacao_da_entrevista, 4),
            (new_survey_id, id_tipo_do_cadastramento, 5),
            (new_survey_id, id_classificacao_da_atividade, 6),
            (new_survey_id, id_nome_do_entrevistado, 7),
            (new_survey_id, id_horario_da_entrevista, 8);


