

locais =  [
        {"value": "Anhanguera"},
        {"value": "Aricanduva"},
        {"value": "Arthur Alvim"},
        {"value": "Bela Vista"},
        {"value": "Brasilândia I"},
        {"value": "Brasilândia II"},
        {"value": "Brasilândia III"},
        {"value": "Butantã (CRAS)"},
        {"value": "Butantã (Descomplica)"},
        {"value": "Cachoeirinha"},
        {"value": "Campo Limpo (CRAS)"},
        {"value": "Campo Limpo (Descomplica)"},
        {"value": "Capão Redondo"},
        {"value": "Capela do Socorro (CRAS)"},
        {"value": "Capela do Socorro (Descomplica)"},
        {"value": "Casa Verde"},
        {"value": "Centro Oeste"},
        {"value": "CIC Grajau"},
        {"value": "Cidade Ademar (Descomplica)"},
        {"value": "Cidade Ademar I (CRAS)"},
        {"value": "Cidade Ademar II (CRAS)"},
        {"value": "Cidade Lider"},
        {"value": "Cidade Tiradentes"},
        {"value": "Cidade Tiradentes"},
        {"value": "Ermelino Matarazzo (CRAS)"},
        {"value": "Ermelino Matarazzo (Descomplica)"},
        {"value": "Freguesia do Ó (CRAS)"},
        {"value": "Freguesia do Ó (Descomplica)"},
        {"value": "Grajau"},
        {"value": "Guaianases (CRAS)"},
        {"value": "Guaianases (Descomplica)"},
        {"value": "Iguatemi"},
        {"value": "Ipiranga (CRAS)"},
        {"value": "Ipiranga (Descomplica)"},
        {"value": "Itaim Paulista (Descomplica)"},
        {"value": "Itaim Paulista I (CRAS)"},
        {"value": "Itaim Paulista II (CRAS)"},
        {"value": "Itaquera (CRAS)"},
        {"value": "Itaquera (Descomplica)"},
        {"value": "Jabaquara (CRAS)"},
        {"value": "Jabaquara (Descomplica)"},
        {"value": "Jaçanã (CRAS)"},
        {"value": "Jaçanã (Descomplica)"},
        {"value": "Jaraguá"},
        {"value": "Jd. Angela"},
        {"value": "Jd. São Luiz"},
        {"value": "Lajeado"},
        {"value": "Lapa (CRAS)"},
        {"value": "Lapa (Descomplica)"},
        {"value": "M'' Boi Mirim (CRAS)"},
        {"value": "M'' Boi Mirim (Descomplica)"},
        {"value": "Marsilac"},
        {"value": "Mooca (CRAS)"},
        {"value": "Mooca (Centro Pop)"},
        {"value": "Mooca (Descomplica)"},
        {"value": "Norte (Móvel)"},
        {"value": "Parelheiros (CRAS)"},
        {"value": "Parelheiros (Descomplica)"},
        {"value": "Pedreira"},
        {"value": "Penha (CRAS)"},
        {"value": "Penha (Descomplica)"},
        {"value": "Perus (CRAS)"},
        {"value": "Perus (Descomplica)"},
        {"value": "Pinheiros"},
        {"value": "Pirituba"},
        {"value": "Santana (Centro Pop)"},
        {"value": "Santana (CRAS)"},
        {"value": "Santana (Descomplica)"},
        {"value": "Santo Amaro (Centro Pop)"},
        {"value": "Santo Amaro (CRAS)"},
        {"value": "Santo Amaro (Descomplica)"},
        {"value": "São Mateus (CRAS)"},
        {"value": "São Mateus (Descomplica)"},
        {"value": "São Miguel Paulista (CRAS)"},
        {"value": "São Miguel Paulista (Descomplica)"},
        {"value": "Sapopemba"},
        {"value": "Sé (CRAS)"},
        {"value": "Sé 24Horas (Descomplica)"},
        {"value": "SMADS/GSUAS/CGB"},
        {"value": "Sta Cecilia"},
        {"value": "Sul (Móvel)"},
        {"value": "Tremembé"},
        {"value": "Vila Andrade"},
        {"value": "Vila Curuçá"},
        {"value": "Vila Maria (Centro Pop)"},
        {"value": "Vila Maria (CRAS)"},
        {"value": "Vila Maria (Descomplica)"},
        {"value": "Vila Mariana"},
        {"value": "Vila Medeiros"},
        {"value": "Vila Prudente (CRAS)"},
        {"value": "Vila Prudente (Descomplica)"}
    ]


field_id = 7268

for local in locais:
    print(
f'''        INSERT INTO cadunico.tb_field_value
        ("uuid", created_at, updated_at, deleted_at, description, value, field_id)
        VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, \'{local['value']}\', {field_id});''')