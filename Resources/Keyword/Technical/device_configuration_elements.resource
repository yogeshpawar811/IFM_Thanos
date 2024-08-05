*** Settings ***

*** Variables ***

*** Keywords ***

User Click On Device Configuration Tab
    [Documentation]     User Click On Device Configuration Tab
    ...
    ...     Examples:
    ...     User Navigates To Device Configuration Window
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click on element        ${device_configuration_tab}

User Click On SFTP Push Plus Sign
    [Documentation]     User Click On SFTP Push Plus Sign
    ...
    ...     Examples:
    ...     User Click On SFTP Push Plus Sign
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click on element        ${sftp_push_sign}

User Click On FTP Tab
    [Documentation]     User Click On FTP Tab
    ...
    ...     Examples:
    ...     User Click On FTP Tab
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click on element        ${ftp_tab}

SFTP Server Configuration Form Should Be Visible
    [Documentation]     SFTP Server Configuration Form Should Be Visible
    ...
    ...     Examples:
    ...     SFTP Server Configuration Form Should Be Visible
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Verify Element State     ${app_ftp_server}            visible

SFTP Server Configuration Form Should Not Be Visible
    [Documentation]     SFTP Server Configuration Form Should Not Be Visible
    ...
    ...     Examples:
    ...     SFTP Server Configuration Form Should Not Be Visible
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Verify Element State     ${app_ftp_server}            detached

User Enter Name In Input Field Server Name With 20 Char Length
    [Documentation]     User Enter Name In Input Field Server Name With 20 Char Length
    ...
    ...     Examples:
    ...     User Enter Name In Input Field Server Name With 20 Char Length
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Enter Text Into Textbox        ${server_name_input}        ${20_char_length}
    Verify Element State     ${assestive_text_error_notify}            detached

User Enter Name In Input Field Server Name With 21 Char Length
    [Documentation]     User Enter Name In Input Field Server Name With 21 Char Length
    ...
    ...     Examples:
    ...     User Enter Name In Input Field Server Name With 21 Char Length
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Enter Text Into Textbox        ${server_name_input}        ${21_char_length}
    Verify Element State     ${assestive_text_error_notify}            visible

User Enter Name In Input Field Server Name With Empty String
    [Documentation]     User Enter Name In Input Field Server Name With Empty String
    ...
    ...     Examples:
    ...     User Enter Name In Input Field Server Name With Empty String
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Enter Text Into Textbox        ${server_name_input}        ${20_char_length}
    Clear Text Value From Textbox       ${server_name_input}
    Verify Element State     ${assestive_text_error_notify}            visible

Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation
    [Documentation]     Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation
    ...
    ...     Parameters:
    ...     *port_number_value*: port number value
    ...
    ...     Examples:
    ...     Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation        ${port_number_value}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ...
    ...     Return:
    ...     - Current status of assestive port text error
    [Arguments]     ${port_number_value}
    User Click On SFTP Push Plus Sign
    SFTP Server Configuration Form Should Be Visible
    Enter Port Number Value In Textbox      ${port_number_value}
    ${state}       Get Element States     xpath=${assestive_port_text_error_notify}
    [Return]        ${state}

Enter Port Number Value In Textbox
    [Documentation]     Enter Port Number Value In Textbox
    ...
    ...     Examples:
    ...     Enter Port Number Value In Textbox        ${port_number_value}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${port_number_value}
    Enter Text Into Textbox        ${port_number_input}        ${port_number_value}

Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation
    [Documentation]     Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation
    ...
    ...     Parameters:
    ...     *server_ip_address*: Server IP Address
    ...
    ...     Examples:
    ...     Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation        ${server_ip_address_value}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ...
    ...     Return:
    ...     - Current status of assestive port text error
    [Arguments]     ${server_ip_address_value}
    User Click On SFTP Push Plus Sign
    SFTP Server Configuration Form Should Be Visible
    Enter Server IP Address Value In Textbox      ${server_ip_address_value}
    ${state}       Get Element States     xpath=${assestive_port_text_error_notify}
    [Return]        ${state}

Enter Server IP Address Value In Textbox
    [Documentation]     Enter Server IP Address Value In Textbox
    ...
    ...     Examples:
    ...     Enter Server IP Address Value In Textbox        ${server_ip_address_value}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${server_ip_address_value}
    Enter Text Into Textbox        ${server_ip_input}        ${server_ip_address_value}

Open SFTP Server Configuration Form And Enter Value In Key Field Textbox And Return Status Of Validation
    [Documentation]     Open SFTP Server Configuration Form And Enter Value In Key Field Textbox And Return Status Of Validation
    ...
    ...     Parameters:
    ...     *string*: string to be pass
    ...
    ...     Examples:
    ...     Open SFTP Server Configuration Form And Enter Value In Key Field Textbox And Return Status Of Validation        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ...
    ...     Return:
    ...     - Current status of assestive port text error
    [Arguments]     ${string}
    User Click On SFTP Push Plus Sign
    SFTP Server Configuration Form Should Be Visible
    Enter Key Field Value In Textbox      ${string}
    ${state}       Get Element States     xpath=${assestive_port_text_error_notify}
    [Return]        ${state}

Enter Key Field Value In Textbox
    [Documentation]     Enter Key Field Value In Textbox
    ...
    ...     Examples:
    ...     Enter Key Field Value In Textbox        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${string}
    Enter Text Into Textbox        ${key_field_input}        ${string}

Open SFTP Server Configuration Form And Enter Value In Password Field Textbox And Return Status Of Validation
    [Documentation]     Open SFTP Server Configuration Form And Enter Value In Password Field Textbox And Return Status Of Validation
    ...
    ...     Parameters:
    ...     *string*: string to be pass
    ...
    ...     Examples:
    ...     Open SFTP Server Configuration Form And Enter Value In Password Field Textbox And Return Status Of Validation        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ...
    ...     Return:
    ...     - Current status of assestive port text error
    [Arguments]     ${string}
    User Click On SFTP Push Plus Sign
    SFTP Server Configuration Form Should Be Visible
    Enter Password Field Value In Textbox      ${string}
    ${state}       Get Element States     xpath=${assestive_port_text_error_notify}
    [Return]        ${state}

Enter Password Field Value In Textbox
    [Documentation]     Enter Password Field Value In Textbox
    ...
    ...     Examples:
    ...     Enter Password Field Value In Textbox        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${string}
    Enter Text Into Textbox        ${password_field_input}        ${string}

Open SFTP Server Configuration Form And Enter Value In Username Field Textbox And Return Status Of Validation
    [Documentation]     Open SFTP Server Configuration Form And Enter Value In Username Field Textbox And Return Status Of Validation
    ...
    ...     Parameters:
    ...     *string*: string to be pass
    ...
    ...     Examples:
    ...     Open SFTP Server Configuration Form And Enter Value In Username Field Textbox And Return Status Of Validation        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ...
    ...     Return:
    ...     - Current status of assestive port text error
    [Arguments]     ${string}
    User Click On SFTP Push Plus Sign
    SFTP Server Configuration Form Should Be Visible
    Enter Username Field Value In Textbox      ${string}
    ${state}       Get Element States     xpath=${assestive_port_text_error_notify}
    [Return]        ${state}

Enter Username Field Value In Textbox
    [Documentation]     Enter Username Field Value In Textbox
    ...
    ...     Examples:
    ...     Enter Username Field Value In Textbox        ${string}
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    [Arguments]     ${string}
    Enter Text Into Textbox        ${username_field_input}        ${string}

User Fill The Correct Values In SFTP Server Configuration Form
    [Documentation]     User Fill The Correct Values In SFTP Server Configuration Form
    ...
    ...     Examples:
    ...     User Fill The Correct Values In SFTP Server Configuration Form
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Enter Name In Input Field Server Name With 20 Char Length
    Enter Port Number Value In Textbox      ${int_1000}
    Enter Server IP Address Value In Textbox        ${valid_server_ip_address}
    Enter Password Field Value In Textbox        password
    Enter Key Field Value In Textbox        testKey
    Enter Username Field Value In Textbox        testUsername

New Server Should Be Added In FTP Section
    [Documentation]     New Server Should Be Added In FTP Section
    ...
    ...     Examples:
    ...     New Server Should Be Added In FTP Section
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ${xpath}        Create XPath By Text     ${20_char_length}
    ${status}       Get Element States     xpath=${xpath}
    Should Contain       ${status}     attached