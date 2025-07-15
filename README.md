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

4. Clone this repo into your local machine.

5. Once clone is  completed, create a virtual env either by using `pip install virtual-env` or just by creating a virtual-env in `vs-code`.

5. Activate the virtual env . 
    a. If the  `virtual-env` was created using `vs-code`, Open this folder in local using vs-code follow these steps :   
        1. press `ctrl+shift+p` 
        2. create new terminal 
        3. You should see your environment name in the terminal.
    
    b. If created using termnial , in the terminal just type `<env_name> activate`.

6. Once activate run the following command in the terminal : `pip install -r requirment.txt`. This will install all the necessary packages.

7. To Create a db folder
    a. On mac : 
        1. create directory using `mkdir ~/.dbt`
        2.  use `dbt init <ProjectName>` to create a intial dbt-starting folder
        3. Complete the Snowflake account linking 
        4. Use the custom user that we created for this purpose.
        5. Add in our custom role, custom warehouse, database and schema that we want to use
        6. Use single thread for now
        7. Once completed cd into the new created `dbt-learn` folder and run `dbt-debug`
        8. You should see that all **checks are passed**.

    b. On windows:
        1. Create directory using `mkdir %userprofile%\.dbt
        2. use `dbt init <ProjectName>` to create a intial dbt-starting folder
        3. Complete the Snowflake account linking 
        4. Use the custom user that we created for this purpose.
        5. Add in our custom role, custom warehouse, database and schema that we want to use
        6. Use single thread for now
        7. Once completed cd into the new created `dbt-learn` folder and run `dbt-debug`
        8. You should see that all **checks are passed**.

**Note:** 
1. The setup is same for all the platforms 
2. For this Project I have my project name as `dbtlearn`.