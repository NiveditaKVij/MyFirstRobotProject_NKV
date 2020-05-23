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
    
SampleLoginTest
    [Documentation]              This is a sample login test
    Open Browser                 https://opensource-demo.orangehrmlive.com/     chrome
    Maximize Browser Window
    Set Browser Implicit Wait    20
    Input Text                   id=txtUsername                                 Admin    
    Input Password               id=txtPassword                                 admin123
    Click Button                 id=btnLogin
    Sleep                        2s        
    Click Element                id=welcome
    Click Element                link=Logout    
    Log                          Test Completed    
  #Comment  

