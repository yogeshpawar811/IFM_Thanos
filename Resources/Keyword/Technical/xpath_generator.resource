*** Settings ***

*** Variables ***

*** Keywords ***
Generate Xpath By Text
    [Arguments]    ${text}
    [Return]    //*[contains(text(),'${text}')]