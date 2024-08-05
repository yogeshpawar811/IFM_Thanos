*** Settings ***

*** Variables ***

*** Keywords ***
Open Browser And Maximize
    [Documentation]     Open Browser And Maximize
    ...
    ...     Examples:
    ...     Open Browser And Maximize   ${environment}
    ...
    ...     Preconditions:
    ...     - Machine should be in IFM network
    [Arguments]    ${environment}
    New Browser    ${BROWSER}    headless=${HEADLESS_MODE}
    New Context    viewport={'width': 1200, 'height': 1000}
    Set Browser Timeout    ${DEFAULT_TIMEOUT}
    New Page    ${environment}

Element Should Be Visible
    [Documentation]     Element Should Be Visible
    ...
    ...     Examples:
    ...     Element Should Be Visible
    ...
    ...     Parameters:
    ...     *xpath*: locator to be verify
    ...
    ...     Preconditions:
    ...     - Machine should be in IFM network
    [Arguments]    ${xpath}
    Wait For Elements State    ${xpath}    attached    timeout=5s

Element Should Not Be Visible
    [Documentation]     Element Should Not Be Visible
    ...
    ...     Examples:
    ...     Element Should Not Be Visible
    ...
    ...     Parameters:
    ...     *xpath*: locator to be verify
    ...
    ...     Preconditions:
    ...     - Machine should be in IFM network
    [Arguments]    ${xpath}
    Wait For Elements State    ${xpath}    detached    timeout=5s