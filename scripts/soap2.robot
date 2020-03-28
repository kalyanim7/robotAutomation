*** Settings ***
Library   SudsLibrary
Library   BuiltIn
Library   Collections

*** Test cases ***
TestAdd
	log to console   This is new Masg
	Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	${result}=	Call Soap Method	Add     2     4
	Should Be Equal As Numbers	${result}	6

TestSubtract
	log to console   This is new Masg
	Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	${result}=	Call Soap Method	Subtract     4     2
	Should Be Equal As Numbers	${result}	2
