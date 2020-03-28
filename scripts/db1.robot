*** Settings ***
#Library   pymysql
Library   DatabaseLibrary
*** Test cases ***
Test1
	log to console   This is is test case for DB connection and SQL Query
	${queryString}=   Set Variable  select * from student2 where name="John"         
	
	Connect To Database   pymysql   mytable1  root  passw0rd  localhost   3306
	${status}    @{queryResults}    Run Keyword And Ignore Error    Query    ${queryString}
	#Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	Comment  ThisIsEndOfTestCase
