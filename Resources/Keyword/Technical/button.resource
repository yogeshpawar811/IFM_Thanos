*** Settings ***

*** Variables ***

*** Keywords ***
Click on Button
    [Documentation]     Click on Element
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Click on Element        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Click     xpath=${locator}

Check Button visibility
    [Documentation]     Check Button visibility
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Check Button visibility        ${locator}
    [Arguments]    ${locator}
    Get Element States     xpath=${locator}        contains            visible

Button Status Should Be Disabled
    [Documentation]     Button Status Should Be Disabled
    ...
    ...     Parameters:
    ...     *element_text*: text for the locator
    ...
    ...     Examples:
    ...     Button Status Should Be Disabled        ${element_text}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${element_text}
    Element Should Be Visible    //*[text()='${element_text}' and contains(@class, 'disabled')]

Button Status Should Be Enabled
    [Documentation]     Button Status Should Be Enabled
    ...
    ...     Parameters:
    ...     *element_text*: text for the locator
    ...
    ...     Examples:
    ...     Button Status Should Be Enabled        ${element_text}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${element_text}
    Element Should Be Visible    //*[text()='${element_text}' and not(contains(@class, 'enabled'))]

Get Button status
    [Documentation]     Get Button status
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Get Button status        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - Current status of Button
    [Arguments]  ${locator}
    ${style}=  Get Style    ${locator}        background-color
    ${status}=      generate_toggle_status       ${style}
    [Return]  ${status}

Get Button Text
    [Documentation]     Get Button Text
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Get Button Text        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - Button Text
    [Arguments]  ${locator}
    ${button_text}=      Get Text    xpath=${locator}
    [Return]        ${button_text}

Get Button Colour
    [Documentation]     Get Button Colour
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Get Button Colour        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - Button Colour
    [Arguments]  ${locator}
    ${colour}=  Get Style    ${locator}        background-color
    [Return]  ${colour}