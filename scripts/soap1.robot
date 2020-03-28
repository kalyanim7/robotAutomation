*** Settings ***
Library   SudsLibrary
Library   BuiltIn
Library   Collections

*** Test cases ***
Test1
	log to console   This is new Masg
	#Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
	Create Soap Client	http://www.webservicex.net/Statistics.asmx?WSDL
	${dbl array}=	Create Wsdl Object	ArrayOfDouble	
	Append To List	${dbl array.double}	2.0	
	Append To List	${dbl array.double}	3.0	
	${result}=	Call Soap Method	GetStatistics	${dbl array}
	Should Be Equal As Numbers	${result.Average}	2.5
