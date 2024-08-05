*** Settings ***

*** Keywords ***

User Click On Plus Sign To Open Wizard Type
    [Documentation]     User Click On Plus Sign To Open Wizard Type
    ...
    ...     Examples:
    ...     User Click On Plus Sign To Open Wizard Type
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click On Element        ${wizard_plus_sign}

User Selects Wizard 3
    [Documentation]     User Selects Wizard 3
    ...
    ...     Examples:
    ...     User Selects Wizard 3
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click On Element        ${wizard3}

User Enter Nessesary Inputs To Create A New App
    [Documentation]     User Enter Nessesary Inputs To Create A New App
    ...
    ...     Examples:
    ...     User Enter Nessesary Inputs To Create A New App
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click On Element        ${wizard3}
    Enter App Name      ${DEFAULT_APP_NAME}
    Enter Description       ${DEFAULT_APP_DESCRIPTION}
    Enter Author Name       ${DEFAULT_AUTHOR_NAME}


    Click On Element        ${ok_btn}


Enter App Name
    [Documentation]     Enter App Name
    ...
    ...     Examples:
    ...     Enter App Name      ${app_name}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${app_name}
    Enter Text Into Textbox      ${app_name_input}        ${app_name}

Enter Description
    [Documentation]     Enter Description
    ...
    ...     Examples:
    ...     Enter Description       ${app_description}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${app_description}
    Enter Text Into Textbox      ${app_description_input}        ${app_description}

Enter Author Name
    [Documentation]     Enter Author Name
    ...
    ...     Examples:
    ...     Enter Author Name       ${app_author}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${app_author}
    Enter Text Into Textbox      ${app_author_input}        ${app_author}