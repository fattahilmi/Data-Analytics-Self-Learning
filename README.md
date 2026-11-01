duckdb olist.db < load_olist.sql

# run using
duckdb olist.db

# read sql file
.read file_name.sql

# export to csv
COPY (query) TO 'filename.csv' (HEADER, DELIMITER, ',')