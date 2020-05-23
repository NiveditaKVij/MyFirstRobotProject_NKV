*** Settings ***
Library  SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello World...    

FirstSeleniumTest
    
    Open Browser                 https://google.com                             chrome
    Set Browser Implicit Wait    20
    Input Text                   name=q                                         Automation Testing
    Press Keys                   name=q                                         ENTER
    Close Browser
    Log                          Test Completed    
    
SampleLoginTest1
    [Documentation]              This is a sample login test
    Open Browser                 ${URL}                                         chrome
    Maximize Browser Window
    Set Browser Implicit Wait    20
    Input Text                   id=txtUsername                                 ${LOGINDATA}[username]    
    Input Password               id=txtPassword                                 ${LOGINDATA}[password]
    Click Button                 id=btnLogin
    Sleep                        2s        
    Click Element                id=welcome
    Click Element                link=Logout
    Close Browser    
    Log                          Test Completed 
    Log    This test was executed by %{username} on %{os}       
  #Comment  

SampleTest
    Open Browser                 ${URL}                                         chrome
    Maximize Browser Window
    Set Browser Implicit Wait    20
    Input Text                   id=txtUsername                                 ${CREDENTIALS}[0]        
    Input Password               id=txtPassword                                 ${CREDENTIALS}[1]
    Click Button                 id=btnLogin
    Sleep                        2s        
    Click Element                id=welcome
    Click Element                link=Logout
    Close Browser    
    Log                          Test Completed 
    Log    This test was executed by %{username} on %{os}
  
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/   #Scalar variable
&{LOGINDATA}    username=Admin    password=admin123    #Dictionary variable    
@{CREDENTIALS}    Admin    admin123                    #List variable
     

