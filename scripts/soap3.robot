*** Settings ***
Library   SudsLibrary
Library   BuiltIn
Library   Collections

*** Test cases ***
TestAdd
	#This testcase adds two integer values using a webservice
	log to console    This is the first testcase
	Create Soap Client   http://www.dneonline.com/calculator.asmx?WSDL
	${number1}=    Set Variable   2
	${number2}=    Set Variable   4
	${result}=     Call Soap Method     Add   ${number1}    ${number2}
	log to console   ${result}
	Should Be Equal As Numbers    ${result}    6

TestSubtract
	#This test cases subtracts two integer values using a webservice
	log to console    This is the second testcase
	Create Soap Client   http://www.dneonline.com/calculator.asmx?WSDL
	${number1}=    Set Variable   4
	${number2}=    Set Variable   2
	${result}=     Call Soap Method     Subtract   ${number1}    ${number2}
	log to console   ${result}
	Should Be Equal As Numbers    ${result}    2
