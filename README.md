# Files
- data_analysis
  - analytics.sql
- data_clean
  - diwang
    - collision_etl.sql
  - tiechuanhu
    - mta_data_clean.sql
- data_ingest
  - data_ingestion.md
- data_profile
  - diwang
    - collisions_profiling
  - tiechuanhu
    - mta_data_profile
- screenshot
  - analytics
    - *.png
  - screenshots_mta.pdf

# How To Build & Run
1. Follow the data ingestion instruction and create tables accordingly.
2. Running queries in data_clean and data_profiling directories
3. Run analytics queries from data_analysis directory

# Results of Run
This is a Hive project so most of the results are printed in the terminal.

However, in case you need to export a table to csv, please run this command

<code>hive -e 'use MYNETID; select * from TABLENAME' | sed 's/[\t]/,/g'  > MYCSVFILENAME.csv</code>