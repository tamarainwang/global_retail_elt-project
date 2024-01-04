# EXCEL TO POSTGRESQL ETL PIPELINE FOR RETAIL DATA MANAGEMENT

## BUSINESS PROBLEM

In this case study, I'm tasked with setting up a basic data warehouse for a retail firm that currently stores its data in Excel. The companies required a solution that could easily be automated to help the business easily gain insights into their best selling items, clients and locations. 

## CORE CONCEPTS THAT ENABLE DELIVERY OF THIS PORJECT ARE:

1) Problem Statement Breakdown
2) Proof Of Concept Planning and Architecture (Before writing Code)
3) Data Transformation and Modelling (SQL, Python)
4) Data Ingestion(Python)
5) Functional Programming(Python)
6) Data Analysis (SQL)

## Problem Statement Breakdown

Based on the company’s specifications, the project will be segmented into 2 tasks aligned with the requested deliverables:

1) Building a Data Warehouse
2) Semi-Automated Process

 My objective is to build an ETL pipeline using Python and Pandas. This involves creating a directory for output files, normalizing data from a provided Excel spreadsheet, and then saving the results into four CSV files for products, customers, locations, and orders. The next step in my project is to materialize these tables into a PostgreSQL database. I used a free Postgres database service, ElephantSQL, for hosting (cost-saving measure). My goal is to effectively transition the firm’s data from Excel into a structured database, laying the groundwork for a more sophisticated data management system.


## TOOLS THAT SUPPORTED THESE TASKS :

### Python

### used data extraction, transformation, and loading into a PostgreSQL database.

Pandas: I used this library for data manipulation and transformation.  
SQLAlchemy: I used this to interact with the PostgreSQL database (ElephantSQL DB).  
psycopg2: I used this PostgreSQL database adapter to facilitate database connections and transactions.  
openpyxl: I used Python library to read from and write to the supplied excel file.  
dotenv: Utilised this package to load environment variables from a .env file, to secure my database credentials.  
os: I used this library to interact with my operating system, e.g creating directories.

### SQL

### this was used to .manipulate the data in the database,create another analtytics table and perfom some basic analytics. (see queries in analytics.sql file)

In this project, I followed these steps:

**Import Libraries**: I included necessary Python libraries such as Pandas for data manipulation, SQLAlchemy for database interactions, and others for file handling and database connectivity.

**Load Environment Variables**: Using dotenv, I loaded environment variables for secure access to the PostgreSQL database.

**Data Import**: I imported data from an Excel file, 'global-superstore-data.xlsx', using Pandas.

**Transform Column Names**: I created a function to format column names into a consistent lower case and replace spaces and hyphens with underscores.

**Data Normalization**: I divided the data into four subsets(1 fact table and 3 dimension tables): products, customers, locations, and orders, and removed duplicates

**Export to CSV**: I wrote the normalized data to CSV files for intermediate storage(a directory on my system) "outputs/models"

**Database Upload**: Finally, I uploaded the CSV files to specific tables in the PostgreSQL database using SQLAlchemy(snapsots of the database is shown in the snapshot folder)

**Basic Analysis**: I did some basic analysis on the data to help the business gain insights into their best selling items, clients and locations.


## CONCLUSION

In conclusion, this project demonstrated the creation of a simple yet effective ETL pipeline using Python and various libraries. The process involved extracting data from an Excel file, transforming it through normalization and column name standardization, and then loading it into a PostgreSQL database. 

This endeavor not only streamlined data management for the retail firm but also laid a solid foundation for future data warehousing and analytics. The skills and tools employed in this project, such as Python, Pandas, SQLAlchemy, and others, were crucial in achieving an efficient data workflow from raw data to a structured database. 

This project has been an invaluable experience, allowing me to apply and enhance the skills and concepts I've learned in data engineering. Through the practical implementation of Python, its libaries ( Pandas, SQLAlchemy, psycopg2, openpyxl, and dotenv) and SQL, I've gained hands-on experience in developing a complete ETL pipeline. This process not only strengthened my technical proficiency but also deepened my understanding of data management and manipulation. It was a challenging yet rewarding journey (with a lot of commits and pushes ...lol) that solidified my knowledge and skills in building data solutions from ground up, particularly in transforming raw data from Excel into a structured and accessible format in a PostgreSQL database. Moreover, using Git for version control added an essential layer of project management and collaboration, which is also best practice in software development. This comprehensive application of my learning, from manipulating Excel data to database management and version control, was a fufilling step towards solidifying my capabilities as a data engineer.


