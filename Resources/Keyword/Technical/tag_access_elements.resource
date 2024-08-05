*** Settings ***

*** Variables ***

*** Keywords ***

Add Required Value Set In Reading Station By Plus Sign
    [Documentation]     Add Required Value Set In Reading Station By Plus Sign
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *required_value_set*: Number of required value set
    ...
    ...     Examples:
    ...     Add Required Value Set In Reading Station By Plus Sign        ${reading_station_number}        ${required_value_set}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]  ${reading_station_number}        ${required_value_set}
    ${plus_sign}=       generate_plus_sign_xpath_for_reading_station        ${reading_station_number}
    FOR    ${index}    IN RANGE    ${required_value_set}
        Click on element        ${plus_sign}
    END

Select Value Set Dropdown Value
    [Documentation]     Select Value Set Dropdown Value
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *required_value_set*: Number of required value set
    ...     *memory_bank_dropdown*: memory bank dropdown
    ...     *value_to_be_set*: value to be set
    ...
    ...     Examples:
    ...     Select Value Set Dropdown Value        ${reading_station_number}        ${value_set_number}      ${memory_bank_dropdown}        ${value_to_be_set}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]  ${reading_station_number}                ${memory_bank_dropdown}        ${value_to_be_set}
    ${port_to_change}=      generate_reading_station_port_selection     ${reading_station_number}   ${value_set_number}
    Click on element        ${port_to_change}
    ${xpath}=       generate_change_port_number_value       ${value_to_be_change}
    Click on element     ${xpath}

Verify Access Password State
    [Documentation]     Verify Access Password State
    ...
    ...     Parameters:
    ...     *password*: password to be verify
    ...     *expected_state*: Expected state of error toast message container
    ...
    ...     Examples:
    ...     Verify Access Password State        ${password}      ${expected_state}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]  ${password}        ${expected_state}
    Clear Text Value From Textbox       ${access_password_input}
    Enter Text Into Textbox     ${access_password_input}        ${password}
    ${element_present_state}    Run Keyword And Return Status    Element Should Be Visible    ${error_toast_msg_container}
    ${password_str}        Get Text        ${access_password_input}
    ${password_str_without_special_char}=  Set Variable  ${password_str.replace('.', '').replace(',', '').replace('-', '').replace('+', '').replace('/', '').replace('?', '')}
    Should Be Equal As Strings      ${password_str}         ${password_str_without_special_char}
    Should Be Equal As Strings      ${element_present_state}       ${expected_state}

Verify Kill Password State
    [Documentation]     Verify Kill Password State
    ...
    ...     Parameters:
    ...     *password*: Verify Kill Password State
    ...     *expected_state*: Expected state of error toast message container
    ...
    ...     Examples:
    ...     Verify Kill Password State        ${password}       ${expected_state}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]  ${password}        ${expected_state}
    Clear Text Value From Textbox       ${kill_password_input}
    Enter Text Into Textbox     ${kill_password_input}        ${password}
    ${element_present_state}    Run Keyword And Return Status    Element Should Be Visible    ${error_toast_msg_container}
    ${password_str}        Get Text        ${kill_password_input}
    ${password_str_without_special_char}=  Set Variable  ${password_str.replace('.', '').replace(',', '').replace('-', '').replace('+', '').replace('/', '').replace('?', '')}
    Should Be Equal As Strings      ${password_str}         ${password_str_without_special_char}
    Should Be Equal As Strings      ${element_present_state}       ${expected_state}

User Should be Verify Kill Password Input Test
    [Documentation]     User Should be Verify Kill Password Input Test
    ...
    ...     Examples:
    ...     User Should be Verify Kill Password Input Test
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    ${pass_and_expected_state_of_error_container}   Create Dictionary       12345678=False      90ABCDEF=False      abcdef09=False        1A=False      1A.=False      1A,=False        1A-=False       1A+=False       1A/=False       1A?=False       100000000=False     FFFFFFFF1=False
    FOR   ${key}  ${value}  IN  &{pass_and_expected_state_of_error_container}
            Verify Kill Password State     ${key}     ${value}
    END

User Should be Verify Access Password Input Test
    [Documentation]     User Should be Verify Access Password Input Test
    ...
    ...     Examples:
    ...     User Should be Verify Access Password Input Test
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    ${pass_and_expected_state_of_error_container}   Create Dictionary       12345678=False      90ABCDEF=False      abcdef09=False        1A=False      1A.=False      1A,=False        1A-=False       1A+=False       1A/=False       1A?=False       100000000=False     FFFFFFFF1=False
    FOR   ${key}  ${value}  IN  &{pass_and_expected_state_of_error_container}
            Verify Access Password State     ${key}     ${value}
    END

Get Tag Access Reading Station Count
    [Documentation]     Get Tag Access Reading Station Count
    ...
    ...     Examples:
    ...     Get Tag Access Reading Station Count
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Tag Access Reading Station Count
    ${count}=       Get Available Element Count       ${tag_access_reading_station}
    [Return]        ${count}

Add Memory Bank To Reading Station
    [Documentation]     Add Memory Bank To Reading Station
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...
    ...     Examples:
    ...     Add Memory Bank To Reading Station        ${reading_station_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]  ${reading_station_number}
    ${no}=       Evaluate       ${reading_station_number}-1
    ${plus_sign}=        Catenate    SEPARATOR=     //*[@id="rs-memory-bank_        ${no}       _add-memory-bank"]
    Click On Element        ${plus_sign}

User Change Memory Bank Value Of Reading Station
    [Documentation]     User Change Memory Bank Value Of Reading Station
    ...
    ...     Parameters:
    ...     *choice*: User Change Memory Bank Dropdown Value
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: Number of port number
    ...
    ...     Examples:
    ...     User Change Memory Bank Value Of Reading Station        ${reading_station_number}      ${port_number}      ${choice}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]  ${reading_station_number}      ${port_number}      ${choice}
    ${dropdown}=        Catenate    SEPARATOR=      (.//app-rs-memory-bank[      ${reading_station_number}       ]//app-memory-bank[     ${port_number}      ]//div//form//ifm-select//ifm-field//div//div//div)[4]
    IF    ${choice} == 1
        ${ele_click}=    set variable    ${dropdown_choice1}
    ELSE IF    ${choice} == 2
        ${ele_click}=    set variable    ${dropdown_choice2}
    ELSE IF    ${choice} == 3
        ${ele_click}=    set variable    ${dropdown_choice3}
    END
    Force Click On Element       ${dropdown}
    Click on element       ${ele_click}

Delete Port Of Reading Station And Verify
    [Documentation]     Delete Port Of Reading Station And Verify
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: Number of port number
    ...
    ...     Examples:
    ...     Delete Port Of Reading Station And Verify        ${reading_station_number}      ${port_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station_number}      ${port_number}
    ${before_count} =  Get Element Count       ${memory_bank_port}
    ${delete_memory_bank_port}=        Catenate    SEPARATOR=      (.//app-rs-memory-bank[      ${reading_station_number}       ]//app-memory-bank[     ${port_number}      ]//button)[4]
    Click on element       ${delete_memory_bank_port}
    ${after_count} =  Get Element Count       ${memory_bank_port}
    Should Not Be Equal As Strings     ${before_count}     ${after_count}