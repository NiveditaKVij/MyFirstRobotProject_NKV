*** Settings ***
Library  SeleniumLibrary    

Suite Setup       Log    Je suis a l'interieur de TestSuite SetUp           
Suite Teardown    Log    Je suis a l'interieur de TestSuite TearDown        
Test Setup        Log    Je suis a l'interieur de Test SetUp                
Test Teardown     Log    Je suis a l'interieur de Test TearDown             

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke    
    Log            Hello World...    

MySecondTest
    Log            inside second test
    Set Tags       regression1
    Remove Tags    regression1
    
MyThirdTest
    Log            inside third test
    
MyFourthTest
    Log            inside fourth test    
