*** Settings ***

*** Variables ***

*** Keywords ***

User Click On Filter Tab
    [Documentation]     User Click On Filter Tab
    ...
    ...     Examples:
    ...     User Click On Filter Tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click On Element       ${filter_tab}

Get Filter Reading Station Count
    [Documentation]     Get Filter Reading Station Count
    ...
    ...     Examples:
    ...     Get Filter Reading Station Count
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Filter Reading Station Count
    ${count}=       Get Available Element Count       ${filter_reading_station}
    [Return]        ${count}