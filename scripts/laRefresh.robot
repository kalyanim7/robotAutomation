*** Settings ***
Library  OperatingSystem
Library  String
Library  Selenium2Library


*** Variables ***
${USERNAME}  	xxxxx
${PASSWORD}  	xxxxx
${LOGIN}     	xpath:/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
${CLOUDSERVERS}  xpath:/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a 

*** test cases ***
first test case
	log to console   Start of the Test case
	Selenium2Library.Open Browser  http://www.linuxacademy.com  firefox
	Click Element  ${LOGIN}  
	# Wait till the page is loaded.
	sleep  10s
    	Input Text   username   ${USERNAME}
        Input Text   password   ${PASSWORD}	
	Submit Form
	sleep  15s
	Click Element  ${CLOUDSERVERS}
	sleep  5s
	Click Button  refresh_timeout
	sleep  5s
	Close  Browser

	log to console   End of the Test case
#/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
#/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a
