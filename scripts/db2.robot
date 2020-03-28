*** Settings ***
#Library   pymysql
Library   DatabaseLibrary
*** Test cases ***
Test1
	log to console   This is is test case for DB connection and SQL Query
	${queryString}=   Set Variable  select * from student2 where name="John"         
	
	Connect To Database   pymysql   mytable1  root  passw0rd  localhost   3306
	${status}    @{queryResults}    Run Keyword And Ignore Error    Query    ${queryString}
	${name}    Set Variable    ${queryResults[0][0]}
	log to console   ${name[0]}
	log to console   ${name[1]}
	Should Be Equal As Strings  ${name[0]}	John
	#Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	Comment  ThisIsEndOfTestCase
