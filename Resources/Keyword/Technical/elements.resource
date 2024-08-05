*** Settings ***

*** Variables ***

*** Keywords ***
Verify Element State
    [Documentation]     Verify the elements required state
    ...
    ...     Parameters:
    ...     *locator*: element xpath to be verify as state
    ...     *state*: Required state of element
    ...
    ...     Examples:
    ...     Verify element state        ${locator}      ${state}
    ...
    ...     Preconditions:
    ...     - Element should be available on the current page
    [Arguments]    ${locator}       ${state}
    Get Element States     xpath=${locator}        contains            ${state}

Click On Element
    [Documentation]     Click on element
    ...
    ...     Parameters:
    ...     *locator*: element xpath to be verify as state
    ...
    ...     Examples:
    ...     Click on element        ${locator}
    [Arguments]    ${locator}
    #Scroll To Element        ${locator}
    Click     xpath=${locator}

Force Click On Element
    [Documentation]     Force Click on element
    ...
    ...     Parameters:
    ...     *locator*: element xpath to be verify as state
    ...
    ...     Examples:
    ...     Force Click on element        ${locator}
    [Arguments]    ${locator}
    #Scroll To Element        ${locator}
    Click     xpath=${locator}      force=True

Get Available Element Count
    [Documentation]     Get Available Element Count
    ...
    ...     Examples:
    ...     Get Available Element Count       ${locator}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Available Element Count
    [Arguments]    ${locator}
    ${count}=       Get Element Count       ${locator}
    [Return]        ${count}

Get Element Background Color Attribute
    [Documentation]     Get Element Background Color Attribute
    ...
    ...     Parameters:
    ...     *element_xpath*: element xpath
    ...
    ...     Examples:
    ...     Get Element Background Color Attribute      ${element_xpath}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - attribute value
    [Arguments]  ${element_xpath}
    ${background_color}    Get Value From Style    ${element_xpath}    background-color
    [Return]  ${background_color}

Get Value From Style
    [Documentation]     Get Value From Style
    ...
    ...     Parameters:
    ...     *element_xpath*: element xpath
    ...     *key*: required value key
    ...
    ...     Examples:
    ...     Get Value From Style        ${element_xpath}       ${key}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - attribute value
    [Arguments]  ${element_xpath}    ${key}
    ${style_data} =    Get Style    ${element_xpath}
    ${value}    Get From Dictionary    ${style_data}    ${key}
    [Return]  ${value}

Hard Wait To Reflect Changes
    [Documentation]     2s Hard Wait To Reflect Changes
    ...     Examples:
    ...     Hard Wait To Reflect Changes
    ...
    ...     Preconditions:
    ...     - Element should be visible
    Sleep       2s