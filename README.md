# EXCEL TO POSTGRESQL ETL PIPELINE FOR RETAIL DATA MANAGEMENT

## BUSINESS PROBLEM

In this case study, I'm tasked with setting up a basic data warehouse for a retail firm that currently stores its data in Excel. My objective is to build an ETL pipeline using Python and Pandas. This involves creating a directory for output files, normalizing data from a provided Excel spreadsheet, and then saving the results into four CSV files for products, customers, locations, and orders. The next step in my project is to materialize these tables into a PostgreSQL database. I used a free Postgres database service, ElephantSQL, for hosting (cost-saving measure). My goal is to effectively transition the firm’s data from Excel into a structured database, laying the groundwork for a more sophisticated data management system.

## TOOLS 

### These tools collectively supported the tasks of data extraction, transformation, and loading into a PostgreSQL database.

Python: The primary programming language for scripting the ETL process.
\n Pandas: A Python library for data manipulation and analysis, particularly useful for transforming the data.
\n SQLAlchemy: A Python SQL toolkit and Object-Relational Mapping (ORM) library, used for interacting with the PostgreSQL database.
\n psycopg2: A PostgreSQL database adapter for Python, facilitating database connections and transactions.
\n openpyxl: A Python library to read from and write to Excel 2010+ files, used for handling Excel data.
\n dotenv: A Python package for loading environment variables from a .env file, securing database credentials.
os: A standard Python library used for interacting with the operating system, like creating directories.


In this project, I followed these steps:

**Import Libraries**: I included necessary Python libraries such as Pandas for data manipulation, SQLAlchemy for database interactions, and others for file handling and database connectivity.

**Load Environment Variables**: Using dotenv, I loaded environment variables for secure access to the PostgreSQL database.

**Data Import**: I imported data from an Excel file, 'global-superstore-data.xlsx', using Pandas.

**Transform Column Names**: I created a function to format column names into a consistent lower case and replace spaces and hyphens with underscores.

**Data Normalization**: I divided the data into four subsets: products, customers, locations, and orders, and removed duplicates.

**Export to CSV**: I wrote the normalized data to CSV files for intermediate storage.

**Database Upload**: Finally, I uploaded the CSV files to specific tables in the PostgreSQL database using SQLAlchemy.

## CONCLUSION

In conclusion, this project demonstrated the creation of a simple yet effective ETL pipeline using Python and various libraries. The process involved extracting data from an Excel file, transforming it through normalization and column name standardization, and then loading it into a PostgreSQL database. 

This endeavor not only streamlined data management for the retail firm but also laid a solid foundation for future data warehousing and analytics. The skills and tools employed in this project, such as Python, Pandas, SQLAlchemy, and others, were crucial in achieving an efficient data workflow from raw data to a structured database. 

This project has been an invaluable experience, allowing me to apply and enhance the skills and concepts I've learned in data engineering. Through the practical implementation of Python, Pandas, SQLAlchemy, psycopg2, openpyxl, and dotenv, I've gained hands-on experience in developing a complete ETL pipeline. This process not only strengthened my technical proficiency but also deepened my understanding of data management and manipulation. It was a challenging yet rewarding journey that solidified my knowledge and skills in building data solutions from ground up, particularly in transforming raw data from Excel into a structured and accessible format in a PostgreSQL database.Moreover, using Git for version control added an essential layer of project management and collaboration, reinforcing best practices in software development. This comprehensive application of my learning, from manipulating Excel data to database management and version control, was a profound step in solidifying my capabilities as a data engineer.


