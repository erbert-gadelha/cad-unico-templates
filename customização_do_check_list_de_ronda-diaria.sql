-- APENAS OS CAMPOS NOVOS ABAIXO OS CAMPOS QUE --
-- DEVE SER ALTERADOS É MAIS PRÁTICO PELO DBEAVER --




-- ENTREVISTADORES ESTÃO UNIFORMIZADOS
INSERT INTO cadunico.tb_field 
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'entrevistadores_estao_uniformizados', 'Todos os entrevistadores estão devidamente uniformizados e identificados com o uso do crachá?', true, 'BOOLEAN', true);
    
    -- COLABORADORES SEM UNIFORME --
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES (gen_random_uuid(), now(), null, null, 'colaboradores_sem_uniforme', 'Colaboradores sem uniforme', true, 'LIST', true);

        -- FIELD RULES --
            INSERT INTO cadunico.tb_field_rule
            ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
            VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'entrevistadores_estao_uniformizados', 'DISPLAY_FIELD', NULL, NULL, NULL);

            INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_justificativa, ID_DO_FIELD_RULE_NOVO);

        -- ANSWERS --
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', 	ID_colaboradores_sem_uniforme);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', 	ID_colaboradores_sem_uniforme);


        -- COLABORADORES (1-13) -- DEVE REPETIR ESSE TRECHO 13 VEZES ALTERANDO OS VALORES DE N OS IDs
            INSERT INTO cadunico.tb_field
            ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
            VALUES (gen_random_uuid(), now(), null, null, 'colaborador_nao_esta_utilizando_item_N', 'Qual item não está utilizando (N)', true, 'LIST', true);      -- DEVE PERMITIR MAIS DE UMA SELEÇÃO --

                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Uniforme', 	ID_colaborador_nao_esta_utilizando_item_N);

                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Crachá', 	ID_colaborador_nao_esta_utilizando_item_N);            

            INSERT INTO cadunico.tb_field
            ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
            VALUES (gen_random_uuid(), now(), null, null, 'motivo_nao_estar_padronizado_N', 'Motivo por estar fora da padronização (N)', true, 'TEXT', true);
        
            -- FIELD RULE
                INSERT INTO cadunico.tb_field_rule
                ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
                VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? 1,2,3,4,5,6,7,8,9,10,11,12,13', 'colaboradores_sem_uniforme', 'DISPLAY_FIELD', NULL, NULL, NULL);

                INSERT INTO cadunico.tb_field_and_field_rule
                (field_id, field_rule_id)
                VALUES(ID_ID_colaborador_nao_esta_utilizando_item_N, ID_DO_FIELD_RULE_NOVO);

                INSERT INTO cadunico.tb_field_and_field_rule
                (field_id, field_rule_id)
                VALUES(ID_motivo_nao_estar_padronizado_N, ID_DO_FIELD_RULE_NOVO);


-- OS ENTREVISTADORES POSSUEM SENHAS DE ACESSO AO SISTEMAS --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'entrevistadores_possuem_senhas_de_acesso_aos_sistemas', 'Os entrevistadores possuem senhas de acesso aos sistemas?', true, 'BOOLEAN', true);

    -- SISTEMAS QUE OS ENTREVISTADORES TÊM ACESSO --
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES (gen_random_uuid(), now(), null, null, 'sistemas_que_entrevistadores_tem_acesso', 'Sistemas que os entrevistadores têm acesso', true, 'LIST', true);

        -- FIELD RULES --
            INSERT INTO cadunico.tb_field_rule
            ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
            VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Sim', 'entrevistadores_possuem_senhas_de_acesso_aos_sistemas', 'DISPLAY_FIELD', NULL, NULL, NULL);

            INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_sistemas_que_entrevistadores_tem_acesso, ID_DO_FIELD_RULE_NOVO);

        -- ANSWERS --
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Rede.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Dataprev.', 	ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3Agenda.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'BDC.', 	        ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SISCR.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SIGNET', 	    ID_sistemas_que_entrevistadores_tem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SIBEC', 	    ID_sistemas_que_entrevistadores_tem_acesso);

    -- QUANTOS COLABORADORES ESTÃO SEM ACESSO --
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES (gen_random_uuid(), now(), null, null, 'quantos_colaboradores_estao_sem_acesso', 'Quantos colaboradores estão sem acesso.', true, 'LIST', true);

        -- FIELD RULES --
            INSERT INTO cadunico.tb_field_rule
            ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
            VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'entrevistadores_possuem_senhas_de_acesso_aos_sistemas', 'DISPLAY_FIELD', NULL, NULL, NULL);

            INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_sistemas_que_entrevistadores_tem_acesso, ID_DO_FIELD_RULE_NOVO);

        -- ANSWERS --
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', 	ID_quantos_colaboradores_estao_sem_acesso);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', 	ID_quantos_colaboradores_estao_sem_acesso);


        -- COLABORADORES (1-13) -- DEVE REPETIR ESSE TRECHO 13 VEZES ALTERANDO OS VALORES DE N OS IDs
            INSERT INTO cadunico.tb_field
            ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
            VALUES (gen_random_uuid(), now(), null, null, 'nome_do_colabrador_com_pendencia_N', 'Nome do colaborador com pendencia (N)', true, 'TEXT', true);      -- DEVE PERMITIR MAIS DE UMA SELEÇÃO --

            INSERT INTO cadunico.tb_field
            ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
            VALUES (gen_random_uuid(), now(), null, null, 'colaborador_nao_esta_utilizando_item_N', 'Quais senhas estão pendentes (N)', true, 'LIST', true);      -- DEVE PERMITIR MAIS DE UMA SELEÇÃO --


                -- FIELD AMSWERS.
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Rede.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'Dataprev.', 	ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3Agenda.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'BDC.', 	        ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SISCR.', 	    ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SIGNET', 	    ID_sistemas_que_entrevistadores_tem_acesso);
                INSERT INTO cadunico.tb_field_value
                ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
                VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, 'SIBEC', 	    ID_sistemas_que_entrevistadores_tem_acesso);           


        
            -- FIELD RULE
                INSERT INTO cadunico.tb_field_rule
                ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
                VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? 1,2,3,4,5,6,7,8,9,10,11,12,13', 'quantos_colaboradores_estao_sem_acesso', 'DISPLAY_FIELD', NULL, NULL, NULL);

                INSERT INTO cadunico.tb_field_and_field_rule
                (field_id, field_rule_id)
                VALUES(nome_do_colabrador_com_pendencia_N, ID_DO_FIELD_RULE_NOVO);

                INSERT INTO cadunico.tb_field_and_field_rule
                (field_id, field_rule_id)
                VALUES(Icolaborador_nao_esta_utilizando_item_N, ID_DO_FIELD_RULE_NOVO);




-- TODOS OS ENTREVISTADORES ESTÃO CUMPRINDO COM OS PROTOCOLOS DE ATENDIMENTO --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'entrevistadores_estao_cumprindo_protocolos_de_atendimento?', 'Todos os entrevistadores estão cumprindo com os protocolos de atendimento?', true, 'BOOLEAN', true);

    -- QUANTOS ENTREVISTADORES  CUMPREM PROTOCOLOS --
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES (gen_random_uuid(), now(), null, null, 'quantos_nao_estao_cumprindo_protocolos', 'Quantos não estão cumprindo?', true, 'LIST', true);

        -- FIELD RULES --
            INSERT INTO cadunico.tb_field_rule
            ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
            VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'entrevistadores_estao_cumprindo_protocolos_de_atendimento', 'DISPLAY_FIELD', NULL, NULL, NULL);

            INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_sistemas_que_entrevistadores_tem_acesso, ID_DO_FIELD_RULE_NOVO);
        

        -- ANSWERS --
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', 	ID_quantos_nao_estao_cumprindo_protocolos);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', 	ID_quantos_nao_estao_cumprindo_protocolos);


        
        -- COLABORADORES (1-13) -- DEVE REPETIR ESSE TRECHO 13 VEZES ALTERANDO OS VALORES DE N OS IDs
                INSERT INTO cadunico.tb_field
                ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
                VALUES (gen_random_uuid(), now(), null, null, 'nome_colaborador_descumprindo_protocolos', 'Nome do colaborador que está descumprindo os protocolos (n)', true, 'TEXT', true);

                INSERT INTO cadunico.tb_field
                ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
                VALUES (gen_random_uuid(), now(), null, null, 'qual_protocolo_foi_descumprido', 'Qual protocolo foi descumprido pelo entrevistador (n)', true, 'TEXT', true);

                INSERT INTO cadunico.tb_field
                ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
                VALUES (gen_random_uuid(), now(), null, null, 'motivo_nao_cumprimento_protocolo', ' Motivo pelo não cumprimento do protocolo (n)', true, 'TEXT', true);


            -- FIELD RULES --
                INSERT INTO cadunico.tb_field_rule
                ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
                VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? 1,2,3,4,5,6,7,8,9,10,11,12,13', 'quantos_nao_estao_cumprindo_protocolos', 'DISPLAY_FIELD', NULL, NULL, NULL);

                INSERT INTO cadunico.tb_field_and_field_rule
                    (field_id, field_rule_id)
                    VALUES(ID_nome_colaborador_descumprindo_protocolos, ID_DO_FIELD_RULE_NOVO);
                    
                INSERT INTO cadunico.tb_field_and_field_rule
                    (field_id, field_rule_id)
                    VALUES(ID_qual_protocolo_foi_descumprido, ID_DO_FIELD_RULE_NOVO);        

                INSERT INTO cadunico.tb_field_and_field_rule
                    (field_id, field_rule_id)
                    VALUES(ID_motivo_nao_cumprimento_protocolo, ID_DO_FIELD_RULE_NOVO);
        



-- TODOS OS ENTREVISTADORES REALIZAM O PREENCHIMENTO DA PLANILHA DE EXECUÇÃO E ARQUIVAMENTO DOS COMPROVANTES DE CADASTROS ADEQUADAMENTE --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'entrevistadores_preenchem_planilhas_adequadamente', 'Todos os entrevistadores realizam o preenchimento da planilha de execução e arquivamento dos comprovantes de cadastros adequadamente?', true, 'BOOLEAN', true);


    -- SISTEMAS QUE OS ENTREVISTADORES TÊM ACESSO --
        INSERT INTO cadunico.tb_field
        ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
        VALUES (gen_random_uuid(), now(), null, null, 'quantos_nao_preenchem_adequadamente', 'Quantos não preenchem adequadamente?', true, 'LIST', true);

        -- FIELD RULES --
            INSERT INTO cadunico.tb_field_rule
            ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
            VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'entrevistadores_preenchem_planilhas_adequadamente', 'DISPLAY_FIELD', NULL, NULL, NULL);

            INSERT INTO cadunico.tb_field_and_field_rule
                (field_id, field_rule_id)
                VALUES(ID_quantos_nao_preenchem_adequadamente, ID_DO_FIELD_RULE_NOVO);


        -- ANSWERS --
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '1', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '2', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '3', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '4', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '5', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '6', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '7', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '8', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '9', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '10', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '11', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '12', 	ID_quantos_nao_preenchem_adequadamente);
            INSERT INTO cadunico.tb_field_value
            ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
            VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '13', 	ID_quantos_nao_preenchem_adequadamente);


            -- ENTREVISTADORES (1-13) -- REPETIR ESSE TRECHO ALTERANDOS VALORES DE N E ID
                INSERT INTO cadunico.tb_field
                ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
                VALUES (gen_random_uuid(), now(), null, null, 'nome_colaborador_fora_padrao_N', 'Nome do colaborador que está fora do padrão (n)', true, 'TEXT', true);

                INSERT INTO cadunico.tb_field
                ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
                VALUES (gen_random_uuid(), now(), null, null, 'motivo_fora_padrao_N', 'Motivo por estar fora da padronização (n)', true, 'TEXT', true);


                -- FIELD RULES --
                    INSERT INTO cadunico.tb_field_rule
                    ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
                    VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? 1,2,3,4,5,6,7,8,9,10,11,12,13', 'quantos_nao_preenchem_adequadamente', 'DISPLAY_FIELD', NULL, NULL, NULL);

                    INSERT INTO cadunico.tb_field_and_field_rule
                        (field_id, field_rule_id)
                        VALUES(ID_nome_colaborador_fora_padrao_N, ID_DO_FIELD_RULE_NOVO);
                        
                    INSERT INTO cadunico.tb_field_and_field_rule
                        (field_id, field_rule_id)
                        VALUES(ID_motivo_fora_padrao_N, ID_DO_FIELD_RULE_NOVO);



-- A CAIXA DE ARQUIVAMENTO ESTA EM CONFORMIDADE COM AS ORIENTACOES DA CGB? --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'caixa_de_arquivamento_conforme_orientacoes_CGB', 'A caixa de arquivamento está em conformidade com as orientações da CGB?', true, 'BOOLEAN', true);

    INSERT INTO cadunico.tb_field
    ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
    VALUES (gen_random_uuid(), now(), null, null, 'caixa_arquivamento_justificativa', 'Justificativa', true, 'TEXT', true);

    -- FIELD RULES --
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'caixa_arquivamento_justificativa', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_caixa_arquivamento_justificativa, ID_DO_FIELD_RULE_NOVO);



-- DE ACORDO COM O MANUAL DE BOAS PRATICAS VOCE SUPERVISOR CONSIDERA ESTA EQUIPE ADEQUADA --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'equipe_de_acordo_com_boas_praticas', 'De acordo com o Manual de Boa Práticas, você supervisor considera esta equipe adequada?', true, 'BOOLEAN', true);

    INSERT INTO cadunico.tb_field
    ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
    VALUES (gen_random_uuid(), now(), null, null, 'boas_praticas_justificativa', 'Justificativa', true, 'TEXT', true);

    -- FIELD RULES --
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Não', 'equipe_de_acordo_com_boas_praticas', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_boas_praticas_justificativa, ID_DO_FIELD_RULE_NOVO);


-- EXISTE NA UNIDADE FORMULARIOS DO CADASTRO UNICO EM ESTOQUE COM PENDENCIASA TRATAR GORA DAS CAIXAS RASGAFOS OU GURADADOS EM GRANDE QUANTIDADE --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'existem_formularios_pendentes', 'Existe na unidade formulários do Cadastro Único em estoque com pendências a tratar, fora das caixas, rasgados ou guardados em grande quantidade?', true, 'BOOLEAN', true);

    INSERT INTO cadunico.tb_field
    ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
    VALUES (gen_random_uuid(), now(), null, null, 'existem_formularios_pendentes_justificativa', 'Justificativa', true, 'TEXT', true);

    -- FIELD RULES --
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Sim', 'existem_formularios_pendentes', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_existem_formularios_pendentes_justificativa, ID_DO_FIELD_RULE_NOVO);



-- ESTA UNIDADE REALIZA ENCAIXES CONFORME ORIENTACOES DO ROTEIRO DE ATENDIMENTO DE QUE FORMA POSSUI ALGUM TIPO DE LISTAGEM --
INSERT INTO cadunico.tb_field
("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
VALUES (gen_random_uuid(), now(), null, null, 'unidade_realiza_encaixes_conforme_roteiro_de_atendimento', 'Esta unidade realiza encaixes conforme orientações do Roteiro de Atendimento? De que forma? Possui algum tipo de listagem?', true, 'BOOLEAN', true);

    INSERT INTO cadunico.tb_field
    ("uuid", created_at, updated_at, deleted_at, description, "label", mandatory, fieldtype, visible)
    VALUES (gen_random_uuid(), now(), null, null, 'unidade_realiza_encaixes_conforme_roteiro_de_atendimento_justificativa', 'Justificativa', true, 'TEXT', true);

    -- FIELD RULES --
        INSERT INTO cadunico.tb_field_rule
        ("uuid", created_at, updated_at, deleted_at, description, source_field_description, field_rule_action_type, value_to_fill, enable_group_tasks, go_to_next_status)
        VALUES(gen_random_uuid(), now(), NULL, NULL, 'Exibir campo se a resposta for? Sim', 'unidade_realiza_encaixes_conforme_roteiro_de_atendimento', 'DISPLAY_FIELD', NULL, NULL, NULL);

        INSERT INTO cadunico.tb_field_and_field_rule
            (field_id, field_rule_id)
            VALUES(ID_unidade_realiza_encaixes_conforme_roteiro_de_atendimento_justificativa, ID_DO_FIELD_RULE_NOVO);













