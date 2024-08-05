*** Settings ***

*** Variables ***

*** Keywords ***
Get The Scroll Size
    [Documentation]     Gets elements or pages scrollable size as object {width: float, height: float}.
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Get the Scroll Size        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    ...
    ...     Return:
    ...     - scroll size of element
    [Arguments]    ${locator}
    ${scroll_size}=    Get Scroll Size    xpath=${locator}
    [Return]                ${scroll_size}

Scroll To Vertical Top
    [Documentation]     Scrolls an element or the page to an absolute position based on given coordinates
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll to vertical top        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll To  xpath=${locator}  vertical=top

Scroll To Horizontal Left
    [Documentation]     Scrolls an element or the page to an absolute position based on given coordinates
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll to horizontal left        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll To  xpath=${locator}  horizontal=left

Scroll To Vertical Bottom
    [Documentation]     Scrolls an element or the page to an absolute position based on given coordinates
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll to vertical bottom        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll To  xpath=${locator}  vertical=bottom

Scroll To Horizontal Right
    [Documentation]     Scrolls an element or the page to an absolute position based on given coordinates
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll to horizontal right        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll To  xpath=${locator}  horizontal=right

Scroll To Visible Element
    [Documentation]     This method waits for actionability checks, then tries to scroll element into view,
    ...     unless it is completely visible
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll To Visible Element        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll To Element       xpath=${locator}

Scroll By Values Direct
    [Documentation]     Scrolls an element or the page relative from current position by the given values
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll By values direct        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll By       xpath=${locator}        behavior=auto

Scroll By Values Smoothly
    [Documentation]     Scrolls an element or the page relative from current position by the given values
    ...
    ...     Parameters:
    ...     *locator*: xpath for the locator
    ...
    ...     Examples:
    ...     Scroll By values smoothly        ${locator}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${locator}
    Scroll By       xpath=${locator}        behavior=smooth