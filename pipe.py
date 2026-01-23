
import pandas as pd
from sqlalchemy import create_engine
import os

# Get credentials from Environment Variables
user = os.getenv('POSTGRES_USER')
password = os.getenv('POSTGRES_PASSWORD')
host = os.getenv('POSTGRES_HOST')
port = os.getenv('POSTGRES_PORT')
db = os.getenv('POSTGRES_DB')

# Construct the connection string safely
connection_string = f'postgresql://{user}:{password}@{host}:{port}/{db}'
engine = create_engine(connection_string)

csv_file_path = 'data/train.csv' 

print("Reading CSV...")
df = pd.read_csv(csv_file_path)

print("Loading data to Postgres...")
df.to_sql('sales_data', engine, if_exists='replace', index=False)

print("Done! Data ingested successfully.")

