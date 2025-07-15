# The-Complete-DBT-Tutorial
This repo will be the basis of introduction to DBT on Snowflake

## Requirments:

1. Snowflake account- Create a free 30-days snowflake trail account.
2. Python - You need to basics of Python
3. SQL - DBT uses SQL for most cases so understanding basic sql is a must.


## Setup :
1. Create a Snowflake account from this [link](https://signup.snowflake.com/).

2. Once snowflake setup is completed, run the [Setup-account.sql](https://github.com/Anirudh-rao/The-Complete-DBT-Tutorial/blob/EY-Changes-Branches/sql/setup-account.sql) to setup the account related like creating custom 
role , warehouse and assiging all the privileges to the required custom role.

3. After completion of the custom roles , run the [data-loading.sql](https://github.com/Anirudh-rao/The-Complete-DBT-Tutorial/blob/EY-Changes-Branches/sql/data-loading.sql) setup script that creates the all the neccessary data tables and loads the airbnb data.

4. Once completed create a virtual env either by using `pip install virtual-env` or just by creating a virtual-env in `vs code`.

