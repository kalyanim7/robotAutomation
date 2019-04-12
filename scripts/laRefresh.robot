*** Settings ***
Library  OperatingSystem
Library  String
Library  Selenium2Library


*** Variables ***
${USERNAME}  	XXXXXX
${PASSWORD}  	XXXXXX
${LOGIN}     	xpath:/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
${CLOUDSERVERS}  xpath:/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a 

*** test cases ***
first test case
	log to console   Start of the Test case
	${ff options} =     Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
	Selenium2Library.Open Browser  http://www.linuxacademy.com  headlessfirefox
	Click Element  ${LOGIN}  
	# Wait till the page is loaded.
	sleep  10s
    	Input Text   username   ${USERNAME}
        Input Text   password   ${PASSWORD}
	sleep  2s
	log to console  After Login
	Submit Form
	sleep  15s
	Click Element  ${CLOUDSERVERS}
	log to console  After Cloud Servers
	sleep  5s
	Click Button  refresh_timeout
	sleep  2s
	log to console   After Refresh

	log to console   End of the Test case
	sleep  3s
	Close Browser
#/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
#/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a
