*** Settings ***

*** Keywords ***

User Navigate To Filter Tab
    [Documentation]     User Navigate To Filter Tab
    ...
    ...     Examples:
    ...     User Navigate To Filter Tab
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Click On Filter Tab
