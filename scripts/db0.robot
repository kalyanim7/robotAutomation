*** Settings ***
#Library   pymysql
Library   DatabaseLibrary
*** Test cases ***
Test1
	log to console   This is is test case for DB connection and SQL Query
	
	#Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	Comment  ThisIsEndOfTestCase
