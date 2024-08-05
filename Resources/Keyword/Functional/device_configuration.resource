*** Settings ***

*** Keywords ***

User Navigates To Device Configuration Window
    [Documentation]     User Navigates To Device Configuration Window
    ...
    ...     Examples:
    ...     User Navigates To Device Configuration Window
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Click On Device Configuration Tab

User Navigates To SFTP Push
    [Documentation]     User Navigates To SFTP Push
    ...
    ...     Examples:
    ...     User Navigates To SFTP Push
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Click On FTP Tab
    User Click On SFTP Push Plus Sign

User Verify SFTP server configuration form
    [Documentation]     User Verify SFTP server configuration form
    ...
    ...     Examples:
    ...     User Verify SFTP server configuration form
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible

User Verify Input Field Server Name
    [Documentation]     User Verify Input Field Server Name
    ...
    ...     Examples:
    ...     User Verify Input Field Server Name
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    User Enter Name In Input Field Server Name With 20 Char Length
    Click On Cancel Button
    User Click On SFTP Push Plus Sign
    User Enter Name In Input Field Server Name With Empty String
    Click On Cancel Button
    User Click On SFTP Push Plus Sign
    User Enter Name In Input Field Server Name With 21 Char Length

User Verify Input Port Number
    [Documentation]     User Verify Input Port Number
    ...
    ...     Examples:
    ...     User Verify Input Port Number
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation      ${int_1000}
    Should Contain       ${status}     detached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation      ${int_0}
    Should Contain      ${status}     detached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation      ${int_negative_1}
    Should Contain       ${status}     attached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation      ${int_65535}
    Should Contain      ${status}     detached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Port Number Textbox And Return Status Of Validation      ${int_65536}
    Should Contain     ${status}     attached
    Click On Cancel Button

User Verify The Server IP Address
    [Documentation]     User Verify The Server IP Address
    ...
    ...     Examples:
    ...     User Verify The Server IP Address
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation      ${valid_server_ip_address}
    Should Contain       ${status}     detached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation      ${invalid_server_ip_address1}
    Should Contain       ${status}     attached
    Click On Cancel Button
    ${status}       Open SFTP Server Configuration Form And Enter Value In Server IP Address Textbox And Return Status Of Validation      ${invalid_server_ip_address2}
    Should Contain       ${status}     attached
    Click On Cancel Button
    
User Verify The Key Field
    [Documentation]     User Verify The Key Field
    ...
    ...     Examples:
    ...     User Verify The Key Field
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    ${2049_character}        Create String With Length        2049
    ${status}       Open SFTP Server Configuration Form And Enter Value In Key Field Textbox And Return Status Of Validation      ${2049_character}
    Should Contain       ${status}     attached
    Click On Cancel Button
    ${2047_character}        Create String With Length        2047
    ${status}       Open SFTP Server Configuration Form And Enter Value In Key Field Textbox And Return Status Of Validation      ${2047_character}
    Should Contain       ${status}     detached
    Click On Cancel Button

User Verify The Password Field
    [Documentation]     User Verify The Password Field
    ...
    ...     Examples:
    ...     User Verify The Password Field
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    ${512_character}        Create String With Length        512
    ${status}       Open SFTP Server Configuration Form And Enter Value In Password Field Textbox And Return Status Of Validation      ${512_character}
    Should Contain       ${status}     attached
    Click On Cancel Button
    ${511_character}        Create String With Length        511
    ${status}       Open SFTP Server Configuration Form And Enter Value In Password Field Textbox And Return Status Of Validation      ${511_character}
    Should Contain       ${status}     detached
    Click On Cancel Button

User Verify The Username Field
    [Documentation]     User Verify The Username Field
    ...
    ...     Examples:
    ...     User Verify The Username Field
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    ${32_character}        Create String With Length        32
    ${status}       Open SFTP Server Configuration Form And Enter Value In Username Field Textbox And Return Status Of Validation      ${32_character}
    Should Contain       ${status}     detached
    Click On Cancel Button
    ${33_character}        Create String With Length        33
    ${status}       Open SFTP Server Configuration Form And Enter Value In Username Field Textbox And Return Status Of Validation      ${33_character}
    Should Contain       ${status}     attached
    Click On Cancel Button

User Verify The Cancel Button
    [Documentation]     User Verify The Cancel Button
    ...
    ...     Examples:
    ...     User Verify The Cancel Button
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    Click On Cancel Button
    SFTP Server Configuration Form Should Not Be Visible

User Verify The Save Button
    [Documentation]     User Verify The Save Button
    ...
    ...     Examples:
    ...     User Verify The Save Button
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    SFTP Server Configuration Form Should Be Visible
    User Fill The Correct Values In SFTP Server Configuration Form
    Click On Save Button
    SFTP Server Configuration Form Should Not Be Visible
    New Server Should Be Added In FTP Section