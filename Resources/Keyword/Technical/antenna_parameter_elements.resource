*** Settings ***

*** Variables ***

*** Keywords ***

User Switch Reading Station Number
    [Documentation]     User switch reading station number
    ...
    ...     Parameters:
    ...     *choice*: Number of reading stations choice
    ...
    ...     Examples:
    ...     User switch reading station number        ${choice}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${choice}
    IF    ${choice} == 1
        ${ele_click}=    set variable    ${dropdown_choice1}
    ELSE IF    ${choice} == 2
        ${ele_click}=    set variable    ${dropdown_choice2}
    ELSE IF    ${choice} == 3
        ${ele_click}=    set variable    ${dropdown_choice3}
    ELSE IF    ${choice} == 4
        ${ele_click}=    set variable    ${dropdown_choice4}
    END
    Click on element       ${Number_of_reading_stations_dropdown}
    Click on element       ${ele_click}

User Verify Default Number Of Reading Stations
    [Documentation]     User Verify Default Number Of Reading Stations
    ...
    ...     Examples:
    ...     User Verify Default Number Of Reading Stations
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${val}      get text  ${Number_of_reading_stations_dropdown}
    should be equal  ${val}     4

User Toggle Switch And Return Status
    [Documentation]     User Toggle switch and return status
    ...
    ...     Parameters:
    ...     *toggle*: Name of the toggle
    ...
    ...     Examples:
    ...     User Toggle switch and return status        toggle
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${toggle}
    Click on element        ${toggle}
    ${status}=      Get toggle status       ${toggle}
    [Return]  ${status}

Get Toggle Status
    [Documentation]     Get toggle status and return the value
    ...
    ...     Parameters:
    ...     *toggle_xpath*: toggle xpath
    ...
    ...     Examples:
    ...     Get toggle status
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]  ${toggle_xpath}
    ${status} =    Get Attribute    ${toggle_xpath}    aria-checked
    [Return]  ${status}

Add Required Port In Reading Station By Plus Sign
    [Documentation]     Add required port in Reading station by plus sign
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *required_port_count*: Number of required port ount
    ...
    ...     Examples:
    ...     Add Port in Reading station        ${reading_station_number}        ${required_port_count}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]  ${reading_station_number}        ${required_port_count}
    ${num}=     Evaluate        ${reading_station_number}-1
    ${plus_sign}=        Catenate    SEPARATOR=      //*[@id="rs_       ${num}       _add-port"]/span/ifm-font-icon
    FOR    ${index}    IN RANGE    ${required_port_count}
        Click on element        ${plus_sign}
    END

Change Port Value Of Reading Station
    [Documentation]     Change port value of reading station
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *value_to_be_change*: required port number value
    ...
    ...     Examples:
    ...     Change port value of reading station        ${reading_station_number}        ${port_number}      ${value_to_be_change}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station_number}        ${port_number}      ${value_to_be_change}
    ${port_to_change}=      generate_reading_station_port_selection     ${reading_station_number}   ${port_number}
    Click on element        ${port_to_change}
    ${xpath}=       generate_change_port_number_value       ${value_to_be_change}
    Click on element     ${xpath}

Click On Reading Station Toggle And Return Status
    [Documentation]     Click on Reading station Toggle and return status
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...
    ...     Examples:
    ...     Click on Reading station Toggle and return status        ${reading_station_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Current status of reading station
    [Arguments]     ${reading_station_number}
    ${Reading_station_toggle}=   generate_reading_station_toggle    ${reading_station_number}
    Click on element        ${Reading_station_toggle}
    ${status} =    Get toggle status    ${Reading_station_toggle}
    [Return]        ${status}

Click On Reading Station Port Toggle And Return Status
    [Documentation]     Click on Reading station port Toggle and return status
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...
    ...     Examples:
    ...     Click on Reading station port Toggle and return status        ${reading_station_number}       ${port_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Current status of reading station port
    [Arguments]     ${reading_station_number}       ${port_number}
    ${Reading_station_port_toggle}=   generate_reading_station_port_toggle    ${reading_station_number}       ${port_number}
    Click on element        ${Reading_station_port_toggle}
    ${status} =    Get toggle status    ${Reading_station_port_toggle}
    [Return]        ${status}

Select Reading Station Tab
    [Documentation]     Click on Reading station tab
    ...
    ...     Examples:
    ...     Select Reading station tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${reading_station_tab}
    Verify element state     ${reading_station_tab}            selected

Select Basic Settings Tab
    [Documentation]     Move to Basic settings tab
    ...
    ...     Examples:
    ...     Select Basic Settings tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${basic_settings_tab}
    Verify element state     ${basic_settings_tab}            selected

Select Expert Station Tab
    [Documentation]     Move to Expert settings tab
    ...
    ...     Examples:
    ...     Move to Expert settings tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${expert_settings_tab}
    Verify element state     ${expert_settings_tab}            selected

Click On Test Button
    [Documentation]     Click on Test button
    ...
    ...     Examples:
    ...     Click on Test button
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${test_btn}

Click On Save Button
    [Documentation]     Click on Save button
    ...
    ...     Examples:
    ...     Click on Save button
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${save_btn}

Click On Cancel Button
    [Documentation]     Click on Cancel button
    ...
    ...     Examples:
    ...     Click on Cancel button
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on element       ${cancel_btn}

Refresh Reading Station Port
    [Documentation]     Refresh reading station port
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...
    ...     Examples:
    ...     Refresh reading station port        ${reading_station_number}       ${port_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station_number}       ${port_number}
    ${refresh_button}=        Catenate    SEPARATOR=       (       ${reading_station}      [      ${reading_station_number}     ]       ${port}      [      ${port_number}     ]        ${ifm_font_icon}        )[5]
    Click on element        ${refresh_button}

Delete Reading Station Port
    [Documentation]     Delete reading station port
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...
    ...     Examples:
    ...     Delete reading station port        ${reading_station_number}       ${port_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station_number}       ${port_number}
    ${delete_button}=   generate_delete_port_xpath    ${reading_station_number}       ${port_number}
    Click on element        ${delete_button}

Change Reading Station Setting Value
    [Documentation]     Change Reading Station Setting Value
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *setting_value_name*: name of the setting
    ...     *value_to_be_change*: value needs to be change
    ...
    ...     Examples:
    ...     Change Reading Station Setting Value        ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ${xpath}=      generate_reading_station_setting_value_selection     ${reading_station}        ${port_number}      ${setting_value_name}
    Click On Element        ${xpath}
    IF    '${value_to_be_change}' == 'Antenna type 1'
        ${ele_click}=    set variable    ${dropdown_choice1}
    ELSE IF    '${value_to_be_change}' == 'Antenna type 2'
        ${ele_click}=    set variable    ${dropdown_choice2}
    ELSE IF    '${value_to_be_change}' == 'Antenna type 3'
        ${ele_click}=    set variable    ${dropdown_choice3}
    ELSE IF    '${value_to_be_change}' == 'User defined'
        ${ele_click}=    set variable    ${dropdown_choice4}
    END
    Click On Element     ${ele_click}

Fill Reading Station Setting Value
    [Documentation]     Fill Reading Station Setting Value
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *setting_value_name*: name of the setting
    ...     *value_to_be_fill*: value needs to be fill
    ...
    ...     Examples:
    ...     Fill Reading Station Setting Value        ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_fill}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_fill}
    ${xpath}=      generate_reading_station_setting_value_selection     ${reading_station}        ${port_number}      ${setting_value_name}
    Click On Element        ${xpath}
    Enter Text Into Textbox     ${xpath}        ${value_to_be_fill}
    [Return]        ${xpath}

Get Antenna Parameters Reading Station Count
    [Documentation]     Get Antenna Parameters Reading Station Count
    ...
    ...     Examples:
    ...     Get Antenna Parameters Reading Station Count
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Reading Station Count
    ${count}=       Get Available Element Count       ${reading_station}
    [Return]        ${count}

Click On Scroll Panel Dropdown
    [Documentation]     Click On Scroll Panel Dropdown
    ...
    ...     Examples:
    ...     Click On Scroll Panel Dropdown      ${arg_reading_station}        ${arg_port_number}      ${arg_scroll_panel}
    ...
    ...     Parameters:
    ...     *arg_reading_station*: Number of reading station
    ...     *arg_port_number*: port number of reading station
    ...     *arg_scroll_panel*: scroll panel
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${arg_reading_station}        ${arg_port_number}      ${arg_scroll_panel}
    ${xpath}=        Catenate    SEPARATOR=      (      ${reading_station}      [     ${arg_reading_station}      ]     ${port}     [        ${arg_port_number}      ]//button)[     ${arg_scroll_panel}     ]
    Click       ${xpath}

User Click On Antenna Parameters Tab
    [Documentation]     User Click On Antenna Parameters Tab
    ...
    ...     Examples:
    ...     User Click On Antenna Parameters Tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click On Element       ${antenna_parameters_tab}

Delete Reading station
    [Documentation]     Delete Reading station
    ...
    ...     Examples:
    ...     Delete Reading station      ${reading_station_number}
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]  ${reading_station_number}
    ${3dot}=        generate_reading_station_xpath      ${reading_station_number}
#    ${3dot}=              Catenate    SEPARATOR=       (//app-rs[      ${reading_station_number}       ]//button)[3]
    click on element        ${3dot}
    click on element        ${confirm_delete_reading_station}

Verify Reading Station Port Number Value
    [Documentation]     Verify Reading Station Port Number Value
    ...
    ...     Examples:
    ...     Verify Reading Station Port Number Value     ${reading_station}      ${port_number}      ${expected_value}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *expected_value*: expected value
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station}      ${port_number}      ${expected_value}
    ${xpath}=     generate_reading_station_port_selection     ${reading_station}      ${port_number}
    ${port_value}=      Get Text    xpath=${xpath}
    should contain     ${port_value}       ${expected_value}

Get Available Reading Stations And Ports Count
    [Documentation]     Get Available Reading Stations And Ports Count
    ...
    ...     Examples:
    ...     Get Available Reading Stations And Ports Count
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - Reading Station and Port Count
    ${count} =  Get Element Count       ${reading_station}
    [Return]        ${count}

User Could Not Change Reading Station 3 Port Number Value
    [Documentation]     User Could Not Change Reading Station 3 Port Number Value
    ...
    ...     Examples:
    ...     User Could Not Change Reading Station 3 Port Number Value
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${port_to_change}=      generate_reading_station_port_selection     3   1
    click on element        ${port_to_change}
    ${xpath}=       generate_change_port_number_value       Port 1
    ${status}    Run Keyword And Return Status    Element State Should Be    xpath=${xpath}
    should be equal as strings     ${status}       False
    #click on element     ${xpath}
    Verify reading station port number value     3       1       Port 4

Change Port Value
    [Documentation]     Change Port Value
    ...
    ...     Examples:
    ...     Change Port Value   ${reading_station}        ${port_number}      ${value_to_be_change}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *value_to_be_change*: value to be change
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${value_to_be_change}
    ${port_to_change}=      generate_reading_station_port_selection     ${reading_station}   ${port_number}
    click on element        ${port_to_change}
    ${xpath}=       generate_change_port_number_value       ${value_to_be_change}
    click on element     ${xpath}

User Deactivate Reading Station 1 Toggle And Verify Status Of Port Toggle
    [Documentation]     User Deactivate Reading Station 1 Toggle And Verify Status Of Port Toggle
    ...
    ...     Examples:
    ...     User Deactivate Reading Station 1 Toggle And Verify Status Of Port Toggle
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station1_port_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station1_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element        ${Reading_station1_toggle}
    Get Element States     xpath=${Reading_station1_port_toggle1}        contains            unchecked

User Activate Reading Station 1 Toggle And Verify Status Of Port Toggle
    [Documentation]     User Activate Reading Station 1 Toggle And Verify Status Of Port Toggle
    ...
    ...     Examples:
    ...     User Activate Reading Station 1 Toggle And Verify Status Of Port Toggle
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station1_port_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station1_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element        ${Reading_station1_toggle}
    Get Element States     xpath=${Reading_station1_port_toggle1}        contains            checked

User Activate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    [Documentation]     User Activate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    ...
    ...     Examples:
    ...     User Activate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station1_port_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station1_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element        ${Reading_station1_toggle}
    Get Element States     xpath=${Reading_station1_port_toggle1}        contains            unchecked

User Deactivate Switch Of The Reading Station 2 And Verify All Port Should Be Deactivated
    [Documentation]     User Deactivate Switch Of The Reading Station 2 And Verify All Port Should Be Deactivated
    ...
    ...     Examples:
    ...     User Deactivate Switch Of The Reading Station 2 And Verify All Port Should Be Deactivated
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element      ${Reading_station2_toggle}
    ${Reading_station2_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station2_toggle2}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[3]
    ${Reading_station2_toggle3}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[4]
    Get Element States     xpath=${Reading_station2_toggle1}        contains            unchecked
    Get Element States     xpath=${Reading_station2_toggle2}        contains            unchecked
    Get Element States     xpath=${Reading_station2_toggle3}        contains            unchecked

User Activate Switch Of The Reading Station 2 And Verify All Port Should Be Activate
    [Documentation]     User Activate Switch Of The Reading Station 2 And Verify All Port Should Be Activate
    ...
    ...     Examples:
    ...     User Activate Switch Of The Reading Station 2 And Verify All Port Should Be Activate
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element      ${Reading_station2_toggle}
    ${Reading_station2_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station2_toggle2}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[3]
    ${Reading_station2_toggle3}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[4]
    Get Element States     xpath=${Reading_station2_toggle1}        contains            checked
    Get Element States     xpath=${Reading_station2_toggle2}        contains            checked
    Get Element States     xpath=${Reading_station2_toggle3}        contains            checked

User Deactivate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    [Documentation]     User Deactivate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    ...
    ...     Examples:
    ...     User Deactivate Port Toggle For Reading Station 1 And Verify Status Of Toggle
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station1_port_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station1_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [1]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    click on element        ${Reading_station1_port_toggle1}
    Get Element States     xpath=${Reading_station1_port_toggle1}        contains            unchecked

User Deactivate Switches Of All Ports Of The Reading Station 2 And Verify Reading Station 2 Is Deactivate
    [Documentation]     User Deactivate Switches Of All Ports Of The Reading Station 2 And Verify Reading Station 2 Is Deactivate
    ...
    ...     Examples:
    ...     User Deactivate Switches Of All Ports Of The Reading Station 2 And Verify Reading Station 2 Is Deactivate
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    ${Reading_station2_toggle2}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[3]
    ${Reading_station2_toggle3}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[4]
    click on element        ${Reading_station2_toggle1}
    click on element        ${Reading_station2_toggle2}
    click on element        ${Reading_station2_toggle3}
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    Get Element States     xpath=${Reading_station2_toggle}        contains            unchecked

User Activate Only One Switch Of The Port 2 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    [Documentation]     User Activate Only One Switch Of The Port 2 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Examples:
    ...     User Activate Only One Switch Of The Port 2 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle1}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[2]
    click on element        ${Reading_station2_toggle1}
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    Get Element States     xpath=${Reading_station2_toggle}        contains            checked

User Activate Only One Switch Of The Port 3 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    [Documentation]     User Activate Only One Switch Of The Port 3 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Examples:
    ...     User Activate Only One Switch Of The Port 3 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle2}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[3]
    click on element        ${Reading_station2_toggle2}
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    Get Element States     xpath=${Reading_station2_toggle}        contains            checked

User Activate Only One Switch Of The Port 4 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    [Documentation]     User Activate Only One Switch Of The Port 4 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Examples:
    ...     User Activate Only One Switch Of The Port 4 Of The Reading Station 2 And Verify Reading Station 2 Is Activated
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${Reading_station2_toggle3}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[4]
    click on element        ${Reading_station2_toggle3}
    ${Reading_station2_toggle}=     Catenate    SEPARATOR=      (     ${reading_station}      [2]     ${ifm_checkbox}     ${div}        ${div}      [2]     )[1]
    Get Element States     xpath=${Reading_station2_toggle}        contains            checked

Synchronize All Ports Switch Should Be Off
    [Documentation]     Synchronize All Ports Switch Should Be Off
    ...
    ...     Examples:
    ...     Synchronize All Ports Switch Should Be Off
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${status}=      Get toggle status       ${synchronize_all_ports_toggle_status}
    should be equal as strings     ${status}       false

Change Setting Value
    [Documentation]     Change Setting Value
    ...
    ...     Examples:
    ...     Change Setting Value   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *setting_value_name*: setting value name
    ...     *value_to_be_change*: value to be change
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ${xpath}=      generate_reading_station_setting_value_selection     ${reading_station}        ${port_number}      ${setting_value_name}
    click on element        ${xpath}
    ${dropdown_xpath}=      generate_reading_station_setting_value_selection_dropdown     ${reading_station}        ${port_number}      ${setting_value_name}
    click on element        ${dropdown_xpath}
    ${xpath}=       generate_change_port_setting_value       ${value_to_be_change}
    click on element     ${xpath}

Enter Setting Value
    [Documentation]     Enter Setting Value
    ...
    ...     Examples:
    ...     Enter Setting Value   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *setting_value_name*: setting value name
    ...     *value_to_be_change*: value to be change
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${setting_value_name}       ${value_to_be_change}
    ${xpath}=      generate_reading_station_setting_value_selection     ${reading_station}        ${port_number}      ${setting_value_name}
    Clear Text Value From Textbox       ${xpath}
    Enter Text Into Textbox        ${xpath}        ${value_to_be_change}

Get Added Port Values
    [Documentation]     Get Added Port Values
    ...
    ...     Examples:
    ...     Get Added Port Values   ${reading_station}        ${port_number}      ${setting_value_name}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *setting_value_name*: setting value name
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}      ${setting_value_name}
    ${xpath}=       generate_reading_station_setting_value_selection        ${reading_station}        ${port_number}      ${setting_value_name}
    ${value}=      Get Text    xpath=${xpath}
    [Return]    ${value}

User Turn On Synchronize All Ports Switch
    [Documentation]     User Turn On Synchronize All Ports Switch
    ...
    ...     Examples:
    ...     User Turn On Synchronize All Ports Switch
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    click on element        ${synchronize_all_ports_toggle}

Verify EPC Monitor Data To Be Shown As Per Display Selection
    [Documentation]     Verify EPC Monitor Data To Be Shown As Per Display Selection
    ...
    ...     Examples:
    ...     Verify EPC Monitor Data To Be Shown As Per Display Selection       ${radio_selection}      ${epc_length_column_name}        ${data_column_name}
    ...
    ...     Parameters:
    ...     *radio_selection*: radio selection
    ...     *epc_length_column_name*: epc length column name
    ...     *data_column_name*: data column name
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${radio_selection}      ${epc_length_column_name}        ${data_column_name}
    click on element        ${edit_epc}
    click on element        ${radio_selection}
    click on element        ${epc_setting_save}
    ${length_column}=      Get Text    xpath=${epc_length_column}
    ${data_column}=      Get Text    xpath=${epc_data_column}
    should be equal as strings     ${length_column}    ${epc_length_column_name}
    should be equal as strings     ${data_column}    ${data_column_name}

User Select Edit Button And Select EPC And Verify EPC Data To Be Shown
    [Documentation]     User Select Edit Button And Select EPC And Verify EPC Data To Be Shown
    ...
    ...     Examples:
    ...     User Select Edit Button And Select EPC And Verify EPC Data To Be Shown
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Verify EPC Monitor Data To Be Shown As Per Display Selection        ${epc_display_radio}        EPC length      EPC

User Select Edit Button And Select TID And Verify TID Data To Be Shown
    [Documentation]     User Select Edit Button And Select TID And Verify TID Data To Be Shown
    ...
    ...     Examples:
    ...     User Select Edit Button And Select TID And Verify TID Data To Be Shown
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Verify EPC Monitor Data To Be Shown As Per Display Selection        ${tid_display_radio}        TID length      TID

User Select Edit Button And Select USER And Verify USER Data To Be Shown
    [Documentation]     User Select Edit Button And Select USER And Verify USER Data To Be Shown
    ...
    ...     Examples:
    ...     User Select Edit Button And Select USER And Verify USER Data To Be Shown
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Verify EPC Monitor Data To Be Shown As Per Display Selection        ${user_display_radio}        USER length      USER

User Select Display Setting And Coding
    [Documentation]     User Select Display Setting And Coding
    ...
    ...     Examples:
    ...     User Select Display Setting And Coding
    ...
    ...     Parameters:
    ...     *radio_selection*: radio selection
    ...     *coding_selection*: coding selection
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ...
    ...     Return:
    ...     - virtual scroll viewport first data value
    [Arguments]   ${radio_selection}      ${coding_selection}
    ${val}      get text  ${cdk_virtual_scroll_viewport_first_data_value}
    log to console      ${val}
    click on element        ${edit_epc}
    click on element        ${radio_selection}
    click on element        ${epc_display_setting_coding}
    click on element        ${coding_selection}
    click on element        ${epc_setting_save}
    sleep       2s
    ${val}      get text  ${cdk_virtual_scroll_viewport_first_data_value}
    [Return]      ${val}

Check If Hex Format
    [Documentation]     Check If Hex Format
    ...
    ...     Examples:
    ...     Check If Hex Format     ${data}
    ...
    ...     Parameters:
    ...     *data*: data to be check
    ...
    ...     Preconditions:
    ...     -data should be provided
    ...
    ...     Return:
    ...     -True if the string is in Hex format, False otherwise
    [Arguments]    ${data}
    ${result}=    Run Keyword And Return Status    Should Match Regexp    ${data}    [0-9A-Fa-f]+
    [Return]    ${result}

Check If ASCII Format
    [Documentation]     Check If ASCII Format
    ...
    ...     Examples:
    ...     Check If ASCII Format     ${data}
    ...
    ...     Parameters:
    ...     *data*: data to be check
    ...
    ...     Preconditions:
    ...     -data should be provided
    ...
    ...     Return:
    ...     -True if the string is in ASCII format, False otherwise
    [Arguments]    ${data}
    ${result}=    Evaluate    all(ord(c) < 128 for c in ${data})
    [Return]    ${result}

Verify Coding In Display Setting
    [Documentation]     Verify Coding In Display Setting
    ...
    ...     Examples:
    ...     Verify Coding In Display Setting     ${expected_value}
    ...
    ...     Parameters:
    ...     *expected_value*: expected value
    ...
    ...     Preconditions:
    ...     -Antenna Parameter page is already open
    [Arguments]    ${expected_value}
    ${val}      get text  ${epc_monitor_coding_value}
    should be equal as strings     ${val}       ${expected_value}

Verify Tooltips
    [Documentation]     Verify Tooltips
    ...
    ...     Examples:
    ...     Verify Tooltips
    ...
    ...     Preconditions:
    ...     -Antenna Parameter page is already open
    ${count}=       Get Available Element Count     ${scroll_viewport}
    FOR    ${index}    IN RANGE    1        ${count}
        ${xpath}=     Catenate    SEPARATOR=      (     ${scroll_viewport}      )[        ${index}        ]
        ${val}=      get text       ${xpath}
        sleep       1s
        Hover      ${xpath}
        ${tooltip_text}=      Get Text        ${tooltip}
        Should Not Contain    ${tooltip_text}    ...
    END

Verify Cable Value
    [Documentation]     Verify Cable Value
    ...
    ...     Examples:
    ...     Verify Cable Value   ${reading_station}        ${port_number}      ${expected_value}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *expected_value*: expected value
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${arg_reading_station}        ${arg_port_number}      ${expected_value}
    ${xpath}=        Catenate    SEPARATOR=      (      ${reading_station}      [     ${arg_reading_station}      ]     ${port}     [        ${arg_port_number}      ]//input)[4]
    ${val}=      get text       ${xpath}
    should be equal as strings     ${val}     ${expected_value}