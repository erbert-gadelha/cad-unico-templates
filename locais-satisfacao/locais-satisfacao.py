import pandas as pd

# Load the CSV file
df = pd.read_csv("tb_location.csv", sep=";")

# Combine 'location_type' and 'description' into the desired format
combined_list = df.apply(
    # lambda row: f"{row['location_type']} - {row['description']}", axis=1
    lambda row: f"INSERT INTO cadunico.tb_field_value(\"uuid\", created_at, updated_at, deleted_at, description, value, field_id) VALUES(gen_random_uuid(), now(), NULL, NULL, NULL, '{row['location_type']} - {row['description']}', 7279);", axis=1
).tolist()



# Print each item in the list
for item in combined_list:
    print("")
    print(item)
