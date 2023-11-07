# SQL_Challenge

The data analyzed was based off of a fictional company. The first major task for this fictional company is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, tables were designed to hold the data from the CSV files. The CSV files were imported into a SQL database, and then certain questions were answered about the data.
Overall, their were three main parts to this project. They were data modeling, data engineering, and data analysis.

DATA MODELING
The CSV files were inspected, and then an Entity Relationship Diagram of the tables was sketched. To create the sketch, the tool QuickDBD was used. This allowed for an easy diagram visualization of the relationships between the tables. 

DATA ENGINEERING
The provided information was used to create a table schema for each of the six CSV files. The following were completed for each table: specified data types, primary keys identified, foreign keys identified, and other constraints were identifed.
The tables were created in the correct order to handle the foreign keys.
Each CSV file was imported into its corresponding SQL table.

DATA ANALYSIS
For the analysis portion of this project, the following questions were answered:
The employee number, last name, first name, sex, and salary of each employee were listed.
The first name, last name, and hire date for the employees who were hired in 1986 were listed.
The manager of each department along with their department number, department name, employee number, last name, and first name were listed.
The department number for each employee along with that employee’s employee number, last name, first name, and department name were listed.
The first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B were listed.
For each employee in the Sales department,the employee number, last name, and first name were listed.
For each employee in the Sales and Development departments, the employee number, last name, first name, and department name were listed.
The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) were listed.
Finally, the employee count for each department by department code was listed. 
