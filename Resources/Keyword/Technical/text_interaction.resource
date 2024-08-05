*** Settings ***

*** Variables ***

*** Keywords ***
Get Element Text
    [Documentation]     Get Element Text
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Get Element Text        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - element text
    [Arguments]    ${locator}
    ${text}=      Get Text    xpath=${locator}
    [Return]        ${text}

Enter Text Into Textbox
    [Documentation]     Enter Text Into Textbox
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...     *text*: text to be filled
    ...
    ...     Examples:
    ...     Enter Text Into Textbox        ${locator}       ${text}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}       ${text}
    #Clear Text Value From Textbox       ${locator}
    Fill Text       xpath=${locator}        ${text}

Type Text By Key Event
    [Documentation]     Type Text By Key Event
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...     *text*: text to be filled
    ...
    ...     Examples:
    ...     Type Text By Key Event        ${locator}       ${text}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}       ${text}
    Clear Text Value From Textbox
    Type Text    xpath=${locator}        ${text}

Clear Text Value From Textbox
    [Documentation]     Clear Text Value From Textbox
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Clear Text Value From Textbox        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Clear Text    xpath=${locator}

Create XPath By Text
    [Documentation]     Creates an XPath expression to locate an element based on its text content.
    ...
    ...     Parameters:
    ...     *text*: The text content to be used in constructing the XPath expression.
    ...
    ...     Returns:
    ...     A string representing the XPath expression for an element containing the specified text.
    ...
    ...     Examples:
    ...     ${xpath}=    Create XPath By Text    YourElementText
    ...     # Returns an XPath expression to locate an element containing 'YourElementText'.
    ...
    ...     Preconditions:
    ...     - None
    ...
    ...     Notes:
    ...     - The generated XPath expression may not be unique. Ensure it accurately identifies the desired element.
    ...     - Constructing XPaths solely based on text content can make tests more fragile if the text is subject to change.
    [Arguments]    ${text}
    ${xpath}=    Set Variable    (//*[contains(text(), '${text}')])[1]
    [Return]    ${xpath}