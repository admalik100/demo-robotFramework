*** Settings ***
Library    Browser
Library    String

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${BROWSER}    chromium
${HEADLESS}    false
${userName}    name=username
${passWord}    name=password
${nameText}    Ahmad



*** Test Cases ***
update the Personal Details. 
    Open Browser and Login


*** Keywords ***
Open Browser and Login
    New Browser    ${BROWSER}    ${HEADLESS}
    New Page    ${URL}
    Set Browser Timeout    30
    Fill Text    //input[@placeholder='Username']    Admin
    Fill Text    //input[@placeholder='Password']    admin123
    Click    //button[text()=' Login ']
    Click    //span[text()='My Info']
    Sleep    2
    Fill Text    //input[@name='firstName']    Ahmad
    Fill Text    //input[@name='middleName']    Malik
    Sleep    2
    Click    //div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']//button[@type='submit'][normalize-space()='Save']
    Sleep    5
    Get Text    //h6[@class='oxd-text oxd-text--h6 --strong']    == ${nameText}
    
