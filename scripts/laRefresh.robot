*** Settings ***
Library  OperatingSystem
Library  String
Library  Selenium2Library

*** test cases ***
first test case
	log to console   Hhhhhhhw
	Selenium2Library.Open Browser  http://www.linuxacademy.com  firefox
	Click Element  xpath:/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
	# Wait till the page is loaded.
	sleep  10s
    	Input Text   username   xxxxxx
        #    Focus   password  : Added additional comment
        Input Text   password   xxxxxx	
	Submit Form
	sleep  15s
	Click Element  xpath:/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a
#/html/body/div[3]/div[1]/div/div[2]/ul/li[4]/a
#/html/body/div[2]/header/div[2]/div/div/div/div/ul/li[3]/a
