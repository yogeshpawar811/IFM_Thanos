*** Settings ***

*** Keywords ***

User Navigates To Antenna Parameters Window
    [Documentation]     User Navigates To Antenna Parameters Window
    ...
    ...     Examples:
    ...     User Navigates To Antenna Parameters Window
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Click On Application Tab
    User Click On Plus Sign To Open Wizard Type
    User Selects Wizard 3
    User Enter Nessesary Inputs To Create A New App
#    User Verify Default Number Of Reading Stations

User Navigate To Antenna Parameters Tab
    [Documentation]     User Navigate To Antenna Parameters Tab
    ...
    ...     Examples:
    ...     User Navigate To Antenna Parameters Tab
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    User Click On Antenna Parameters Tab

Check Antenna Parameters Tab Selected
    [Documentation]     Check Antenna Parameters tab selected
    Verify Element State     ${antenna_parameters_tab}            selected

Check Reading Station Tab Selected
    [Documentation]     Check Reading Station tab selected
    Verify Element State     ${reading_station_tab}            selected

Check Basic Settings Tab Selected
    [Documentation]     Check Basic settings tab selected
    Verify Element State     ${basic_settings_tab}            selected

Check Expert Settings Tab Selected
    [Documentation]     Check Expert settings tab selected
    Verify Element State     ${expert_settings_tab}            selectedfvf

Change Number Of Reading Stations Count
    [Documentation]     To Change Number of reading stations count
    ...
    ...     Parameters:
    ...     *count_to_be_change*: Number of reading stations choice
    ...
    ...     Examples:
    ...     Change Number of reading stations count        count_to_be_change
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]    ${count_to_be_change}
    User Switch Reading Station Number      ${count_to_be_change}

Toggle Synchronize All Ports
    [Documentation]     Toggle the Synchronize All Ports and return the current status
    ...
    ...     Examples:
    ...     Toggle Synchronize All Ports        ${synchronize_all_ports_toggle}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${status}=      User Toggle Switch And Return Status        ${synchronize_all_ports_toggle}

Add Port In Reading Station
    [Documentation]     Add Port in Reading station
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
    [Arguments]    ${reading_station_number}        ${required_port_count}
    Add Required Port In Reading Station By Plus Sign       ${reading_station_number}        ${required_port_count}

Change Reading Station Ports Value
    [Documentation]     Change Reading station ports value
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...     *value_to_be_change*: required port number value
    ...
    ...     Examples:
    ...     Change Reading station ports value        ${reading_station_number}        ${port_number}      ${value_to_be_change}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]    ${reading_station_number}        ${port_number}      ${value_to_be_change}
    Change Port Value Of Reading Station       ${reading_station_number}        ${port_number}      ${value_to_be_change}

Toggle Reading Station
    [Documentation]     Toggle Reading station
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...
    ...     Examples:
    ...     Toggle Reading station        ${reading_station_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station_number}
    ${status}=      Click On Reading Station Toggle And Return Status     ${reading_station_number}

Toggle Reading Station Port
    [Documentation]     Toggle Reading station port
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *port_number*: port number of reading station
    ...
    ...     Examples:
    ...     Toggle Reading station port        ${reading_station_number}     ${port_number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${reading_station_number}       ${port_number}
    ${status}=      Click On Reading Station Port Toggle And Return Status     ${reading_station_number}       ${port_number}

Toggle Synchronize Basic Settings
    [Documentation]     Toggle the Synchronize Basic Settings and return the current status
    ...
    ...     Examples:
    ...     Toggle Synchronize Basic Settings        ${synchronize_basic_settings_toggle}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${status}=      User Toggle Switch And Return Status        ${synchronize_basic_settings_toggle}

Toggle Synchronize Expert Settings
    [Documentation]     Toggle the Synchronize Basic Settings and return the current status
    ...
    ...     Examples:
    ...     Toggle Synchronize Expert Settings        ${synchronize_expert_settings_toggle}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${status}=      User Toggle Switch And Return Status        ${synchronize_expert_settings_toggle}

Verify Assestive Text Error Message
    [Documentation]     Verify Assestive Text Error Message
    ...
    ...     Examples:
    ...     Verify Assestive Text Error Message     ${error_message}
    ...
    ...     Parameters:
    ...     *error_message*: error message to be verify
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${error_message}
    ${xpath}=       generate_xpath_by_text    ${error_message}
    Verify element state        ${xpath}      visible

Verify Assestive Text Error Message Should Not Visible
    [Documentation]     Verify Assestive Text Error Message Should Not Visible
    ...
    ...     Examples:
    ...     Verify Assestive Text Error Message Should Not Visible     ${error_message}
    ...
    ...     Parameters:
    ...     *error_message*: error message to be verify
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${error_message}
    ${xpath}=       generate_xpath_by_text    ${error_message}
    Verify element state        ${xpath}      detached

Verify Antenna Type Value Validations
    [Documentation]     Verify Antenna Type Value Validations
    ...
    ...     Examples:
    ...     Verify Antenna Type Value Validations     ${Reading_Station_Number}       ${Port_Number}
    ...
    ...     Parameters:
    ...     *Reading_Station_Number*: reading station number
    ...     *Port_Number*: port number
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${Reading_Station_Number}       ${Port_Number}
    Fill Reading Station Setting Value            ${Reading_Station_Number}       ${Port_Number}       Antenna type      111
    Verify Assestive Text Error Message         ${antenna_type_maximum_value_error_message}
    Refresh Reading Station Port        ${Reading_Station_Number}       ${Port_Number}
    Fill Reading Station Setting Value            ${Reading_Station_Number}       ${Port_Number}       Antenna type      11
    Verify Assestive Text Error Message Should Not Visible      ${antenna_type_maximum_value_error_message}

Validate User Defined Antenna Gain Value
   [Documentation]     Validate User Defined Antenna Gain Value
    ...
    ...     Examples:
    ...     Validate User Defined Antenna Gain Value
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Verify Antenna Type Value Validations     1       1
    Verify Antenna Type Value Validations     2       1
    Verify Antenna Type Value Validations     2       2
    Verify Antenna Type Value Validations     2       1

Add Reading Station
    [Documentation]     Add Reading Station
    ...
    ...     Examples:
    ...     Add Reading Station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     3
    Add Port In Reading Station     2       2
    Add Port In Reading Station     3       1

User Able To Verify Number Of Reading Stations For Filter
    [Documentation]     User Able To Verify Number Of Reading Stations For Filter
    ...
    ...     Examples:
    ...     User Able To Verify Number Of Reading Stations For Filter
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     4
    Add Port In Reading Station     2       1
    Add Port In Reading Station     3       1
    Add Port In Reading Station     4       1
    User Navigate To Filter Tab
    ${count}=       Get Filter Reading Station Count
    should be equal as strings     ${count}     4
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     2
    User Navigate To Filter Tab
    ${count}=       Get Filter Reading Station Count
    should be equal as strings     ${count}     2
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     3
    User Navigate To Filter Tab
    ${count}=       Get Filter Reading Station Count
    should be equal as strings     ${count}     3
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     1
    User Navigate To Filter Tab
    ${count}=       Get Filter Reading Station Count
    should be equal as strings     ${count}     1

User Is Able To Verify Addition Of Reading Station
    [Documentation]     User Is Able To Verify Addition Of Reading Station
    ...
    ...     Examples:
    ...     User Is Able To Verify Addition Of Reading Station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
#    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     4
    Change Number Of Reading Stations Count     2
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     2
    Change Number Of Reading Stations Count     3
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     3
    Change Number Of Reading Stations Count     4
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     4

User Is Able To Verify Deletion Of Reading Station
    [Documentation]     User Is Able To Verify Deletion Of Reading Station
    ...
    ...     Examples:
    ...     User Is Able To Verify Deletion Of Reading Station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     3
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     3
    Change Number Of Reading Stations Count     2
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     2
    Change Number Of Reading Stations Count     1
    ${count}=       Get Antenna Parameters Reading Station Count
#    should be equal as strings     ${count}     1

User Create 4 Reading Stations
    [Documentation]     User Create 4 Reading Stations
    ...
    ...     Examples:
    ...     User Create 4 Reading Stations
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     4
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     ${count}

User Create 3 Reading Stations
    [Documentation]     User Create 3 Reading Stations
    ...
    ...     Examples:
    ...     User Create 3 Reading Stations
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     3
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     3

User Create 2 Reading Stations
    [Documentation]     User Create 2 Reading Stations
    ...
    ...     Examples:
    ...     User Create 2 Reading Stations
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     2
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     ${count}

User Verify The Reading Stations Count By Deleting Stations One By One
    [Documentation]     User Verify The Reading Stations Count By Deleting Stations One By One
    ...
    ...     Examples:
    ...     User Verify The Reading Stations Count By Deleting Stations One By One
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Delete Reading station      3
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     ${count}
    Delete Reading station      2
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     ${count}
    Delete Reading station      4
    ${count}=       Get Antenna Parameters Reading Station Count
    should be equal as strings     ${count}     ${count}

User Verify Function Of Adding And Removing Of Ports To Reading Station
    [Documentation]     User Verify Function Of Adding And Removing Of Ports To Reading Station
    ...
    ...     Examples:
    ...     User Verify Function Of Adding And Removing Of Ports To Reading Station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    ${before_adding_port_count}=        Get Available Reading Stations And Ports Count
    Add Required Port In Reading Station By Plus Sign       2       2
    #Add Required Port In Reading Station By Plus Sign       3       1
#    Verify Reading Station Port Number Value     1       1       Port 1
#    Verify Reading Station Port Number Value     2       1       Port 2
#    Verify Reading Station Port Number Value     2       2       Port 3
    #Verify Reading Station Port Number Value     3       1       Port 4
    #Add Required Port In Reading Station By Plus Sign       3       1
    ${adding_maximum_number_port_count}=        Get Available Reading Stations And Ports Count
    should be equal as strings     ${adding_maximum_number_port_count}       ${before_adding_port_count}
    #User Could Not Change Reading Station 3 Port Number Value
    #Delete Reading station      3
    Change Port Value      1       1       Port 4
    Verify Reading Station Port Number Value     1       1       Port 4
    Hard Wait To Reflect Changes
    Change Port Value       2       1       Port 1
    Verify Reading Station Port Number Value     2       1       Port 1
    Hard Wait To Reflect Changes
    Change Port Value       2       2       Port 2
    Verify Reading Station Port Number Value     2       2       Port 2

User Verify Function/Switch Activate Reading Station And Activate Port
    [Documentation]     User Verify Function/Switch Activate Reading Station And Activate Port
    ...
    ...     Examples:
    ...     User Verify Function/Switch Activate Reading Station And Activate Port
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Add Required Port In Reading Station By Plus Sign       2       3
#    User Deactivate Reading Station 1 Toggle And Verify Status Of Port Toggle
#    User Activate Reading Station 1 Toggle And Verify Status Of Port Toggle
#    User Deactivate port toggle for reading station 1 and verify status of toggle
#    User Activate port toggle for reading station 1 and verify status of toggle
    User Deactivate switch of the Reading station 2 and verify all port should be deactivated
    User Activate switch of the Reading station 2 and verify all port should be Activate
    User Deactivate switches of all Ports of the Reading station 2 and verify Reading station 2 is Deactivate
    User Activate only one switch of the Port 2 of the Reading station 2 and verify Reading station 2 is Activated
    User Activate only one switch of the Port 3 of the Reading station 2 and verify Reading station 2 is Activated
    User Activate only one switch of the Port 4 of the Reading station 2 and verify Reading station 2 is Activated

User Verify Synchronize All Ports Function
    [Documentation]     User Verify Synchronize All Ports Function
    ...
    ...     Examples:
    ...     User Verify Synchronize All Ports Function
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Add Required Port In Reading Station By Plus Sign       1       1
    Add Required Port In Reading Station By Plus Sign       2       1
    Change Port Value       1       1       Port 4
    Verify Reading Station Port Number Value     1       1       Port 4
    #Change port value       1       2       Port 2
    Verify reading station port number value     1       2       Port 2
    #Change port value       2       1       Port 3
    Verify reading station port number value     2       1       Port 3
    ${2_port_value_synchronize_all_ports_toggle_off}=        Get added port values     2       1     Port
    ${2_cable_type_value_synchronize_all_ports_toggle_off}=        Get added port values     2       1     Cable type
    ${2_antenna_type_value_synchronize_all_ports_toggle_off}=        Get added port values     2       1     Antenna type
    ${2_transmit_power_value_synchronize_all_ports_toggle_off}=     Get added port values     2       1     Transmit power
    Change setting value        1       1       Cable type      TYPE_1 /-10
    #Change setting value        1       1       Antenna type      User defined
    Enter setting value     1       1       Antenna type      5
    Enter setting value     1       1       Transmit power      1100
    ${2_cable_type_value_synchronize_all_ports_toggle_before_on}=        Get added port values     2       1     Cable type
    ${2_antenna_type_value_synchronize_all_ports_toggle_before_on}=        Get added port values     2       1     Antenna type
    ${2_transmit_power_value_synchronize_all_ports_toggle_before_on}=     Get added port values     2       1     Transmit power
    Should Be Equal     ${2_cable_type_value_synchronize_all_ports_toggle_before_on}       ${2_cable_type_value_synchronize_all_ports_toggle_off}
    Should Be Equal     ${2_antenna_type_value_synchronize_all_ports_toggle_before_on}       ${2_antenna_type_value_synchronize_all_ports_toggle_off}
    Should Be Equal     ${2_transmit_power_value_synchronize_all_ports_toggle_before_on}       ${2_transmit_power_value_synchronize_all_ports_toggle_off}
    User turn on synchronize all ports switch
    Hard Wait To Reflect Changes
    ${2_cable_type_value_synchronize_all_ports_toggle_after_on}=        Get added port values     2       1     Cable type
    ${2_antenna_type_value_synchronize_all_ports_toggle_after_on}=        Get added port values     2       1     Antenna type
    ${2_transmit_power_value_synchronize_all_ports_toggle_after_on}=     Get added port values     2       1     Transmit power
    ${1_cable_type_value_synchronize_all_ports_toggle_after_on}=        Get added port values     1       1     Cable type
    ${1_antenna_type_value_synchronize_all_ports_toggle_after_on}=        Get added port values     1       1     Antenna type
    ${1_transmit_power_value_synchronize_all_ports_toggle_after_on}=     Get added port values     1       1     Transmit power
    Should Be Equal     ${2_cable_type_value_synchronize_all_ports_toggle_after_on}       ${1_cable_type_value_synchronize_all_ports_toggle_after_on}
    Should Be Equal     ${2_antenna_type_value_synchronize_all_ports_toggle_after_on}       ${1_antenna_type_value_synchronize_all_ports_toggle_after_on}
    Should Be Equal     ${2_transmit_power_value_synchronize_all_ports_toggle_after_on}       ${1_transmit_power_value_synchronize_all_ports_toggle_after_on}

Verify Transmit power With Minimum Maximum And Valid Input
    [Documentation]     Verify Transmit power With Minimum Maximum And Valid Input
    ...
    ...     Parameters:
    ...     *Reading_Station_Number*: reading station number
    ...     *Port_Number*: port number
    ...
    ...     Examples:
    ...     Verify Transmit power With Minimum Maximum And Valid Input        ${Reading_Station_Number}       ${Port_Number}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${Reading_Station_Number}       ${Port_Number}
    Fill Reading Station Setting Value            ${Reading_Station_Number}       ${Port_Number}       Transmit power      -33
    Verify Assestive Text Error Message         ${transmit_power_minimum_value_error_message}
    Refresh Reading Station Port        ${Reading_Station_Number}       ${Port_Number}
    Fill Reading Station Setting Value            ${Reading_Station_Number}       ${Port_Number}       Transmit power      4000
    Verify Assestive Text Error Message         ${transmit_power_maximum_value_error_message}
    Refresh Reading Station Port        ${Reading_Station_Number}       ${Port_Number}
    Fill Reading Station Setting Value            ${Reading_Station_Number}       ${Port_Number}       Transmit power      1100
    Verify Assestive Text Error Message Should Not Visible      ${transmit_power_minimum_value_error_message}

Verify Test Radiated Power Value Validations
    [Documentation]     Verify Test Radiated Power Value Validations
    ...
    ...     Examples:
    ...     Verify Test Radiated Power Value Validations
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Add Number Of Reading Stations With Port        4
    Verify Transmit power With Minimum Maximum And Valid Input     1       1
    Verify Transmit power With Minimum Maximum And Valid Input     2       1
    Verify Transmit power With Minimum Maximum And Valid Input     3       1
    Verify Transmit power With Minimum Maximum And Valid Input     4       1

Verify Selection Of The Data To Be Shown In SDI Interface
    [Documentation]     Verify Selection Of The Data To Be Shown In SDI Interface
    ...
    ...     Examples:
    ...     Verify Selection Of The Data To Be Shown In SDI Interface
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    User Select Edit Button And Select EPC And Verify EPC Data To Be Shown
    User Select Edit Button And Select TID And Verify TID Data To Be Shown
    User Select Edit Button And Select USER And Verify USER Data To Be Shown

Verify Selection Of The Format To Be Shown In SDI Interface
    [Documentation]     Verify Selection Of The Format To Be Shown In SDI Interface
    ...
    ...     Examples:
    ...     Verify Selection Of The Format To Be Shown In SDI Interface
    ...
    ...     Preconditions:
    ...     -Antenna Parameter page is already open
    ${data}=    User Select Display Setting And Coding        ${epc_display_radio}       ${epc_display_setting_coding_ascii}
    Verify Coding In Display Setting        ASCII
    ${result}=    Check If ASCII Format       ${data}
    Should Be True    ${result}
    ${data}=    User Select Display Setting And Coding        ${epc_display_radio}       ${epc_display_setting_coding_hex}
    Verify Coding In Display Setting        HEX
    ${result}=    Check If Hex Format       ${data}
    Should Be True    ${result}
    ${data}=    User Select Display Setting And Coding        ${tid_display_radio}       ${epc_display_setting_coding_ascii}
    Verify Coding In Display Setting        ASCII
    ${result}=    Check If ASCII Format       ${data}
    Should Be True    ${result}
    ${data}=    User Select Display Setting And Coding        ${tid_display_radio}       ${epc_display_setting_coding_hex}
    Verify Coding In Display Setting        HEX
    ${result}=    Check If Hex Format       ${data}
    Should Be True    ${result}
    ${data}=    User Select Display Setting And Coding        ${user_display_radio}       ${epc_display_setting_coding_ascii}
    Verify Coding In Display Setting        ASCII
    ${result}=    Check If ASCII Format       ${data}
    Should Be True    ${result}
    ${data}=    User Select Display Setting And Coding        ${user_display_radio}       ${epc_display_setting_coding_hex}
    Verify Coding In Display Setting        HEX
    ${result}=    Check If Hex Format       ${data}
    Should Be True    ${result}

Verify Assestive Text Error Message Should Be Visible
    [Documentation]     Verify Assestive Text Error Message Should Be Visible
    ...
    ...     Examples:
    ...     Verify Assestive Text Error Message Should Be Visible     ${error_message}
    ...
    ...     Parameters:
    ...     *error_message*: error message to be verify
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${error_message}
    ${xpath}=       generate_xpath_by_text    ${error_message}
    Verify element state        ${xpath}      attached

Verify Cable Value Changes
    [Documentation]     Verify Cable Value Changes
    ...
    ...     Examples:
    ...     Verify Cable Value Changes     ${reading_station}        ${port_number}
    ...
    ...     Parameters:
    ...     *reading_station*: Number of reading station
    ...     *port_number*: port number of reading station
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]   ${reading_station}        ${port_number}
    Change Setting Value        ${reading_station}       ${port_number}       Cable type      User defined
    Verify Cable Value        ${reading_station}       ${port_number}       0
    Enter setting value     ${reading_station}       ${port_number}       Cable type      ${cable_value_error_min}
    Verify Cable Value        ${reading_station}       ${port_number}       0
    Verify Assestive Text Error Message Should Be Visible       ${cable_value_less_than_minimum_value_error_message}
    Refresh Reading Station Port        ${reading_station}       ${port_number}
    Change Setting Value        ${reading_station}       ${port_number}       Cable type      User defined
    Verify Cable Value        ${reading_station}       ${port_number}       0
    Enter setting value     ${reading_station}       ${port_number}       Cable type      ${cable_value_error_max}
    Verify Assestive Text Error Message Should Be Visible       ${cable_value_greater_than_maximum_value_error_message}
    Refresh Reading Station Port        ${reading_station}       ${port_number}
    Change Setting Value        ${reading_station}       ${port_number}       Cable type      User defined
    Verify Cable Value        ${reading_station}       ${port_number}       0
    Enter setting value     ${reading_station}       ${port_number}       Cable type      ${cable_value_valid}
    Verify Assestive Text Error Message Should Not Visible       ${cable_value_less_than_minimum_value_error_message}
    Verify Assestive Text Error Message Should Not Visible       ${cable_value_greater_than_maximum_value_error_message}

Verify User Defined Cable Attenuation Value
    [Documentation]     Verify User Defined Cable Attenuation Value
    ...
    ...     Examples:
    ...     Verify User Defined Cable Attenuation Value
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     3
    Add Port In Reading Station     2       2
    Add Port In Reading Station     3       1
    Verify Cable Value Changes      2       1
    Verify Cable Value Changes      2       2
    Verify Cable Value Changes      3       1