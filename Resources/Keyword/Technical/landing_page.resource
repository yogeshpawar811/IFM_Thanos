*** Settings ***

*** Variables ***

*** Keywords ***
The User Is Logged In To The Thanos Application
    [Documentation]     The User Is Logged In To The Thanos Application
    ...
    ...     Examples:
    ...     The User Is Logged In To The Thanos Application
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click On Element       ${lock_icon}
    Enter Text Into Textbox       ${password_input}       password
    Click On Element       ${login_btn}

User Click On Application Tab
    [Documentation]     User Click On Application Tab
    ...
    ...     Examples:
    ...     User Click On Application Tab
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click On Element       ${Application_tab}