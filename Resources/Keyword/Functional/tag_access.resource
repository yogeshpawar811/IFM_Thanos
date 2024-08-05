*** Settings ***

*** Keywords ***

Select Tag Access Tab
    [Documentation]     Select Tag Access Tab
    ...
    ...     Examples:
    ...     Select Tag Access Tab
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Click on Element     ${tag_access_tab}

Select Access Protection Tab
    [Documentation]     Select Access Protection Tab
    ...
    ...     Examples:
    ...     Select Access Protection Tab
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Click on Element     ${access_protection_tab}

Select Parameters Settings Tab
    [Documentation]     Select Parameters Settings Tab
    ...
    ...     Examples:
    ...     Select Parameters Settings Tab
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Click on Element     ${parameters_settings_tab}

Select Read And Write Access Tab
    [Documentation]     Select Read And Write Access Tab
    ...
    ...     Examples:
    ...     Select Read And Write Access Tab
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Click on Element     ${read_and_write_access_tab}

Check Tag Access Tab Selected
    [Documentation]     Check Tag Access tab selected
    ...
    ...     Examples:
    ...     Check Tag Access tab selected
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Verify Element State     ${tag_access_tab}            selected

Check Read And Write Access Tab Selected
    [Documentation]     Check Read And Write Access tab selected
    ...
    ...     Examples:
    ...     Check Read And Write Access tab selected
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Verify Element State     ${read_and_write_access_tab}            selected

Select Parameter Settings Tab
    [Documentation]     Select Parameter Settings Tab
    ...
    ...     Examples:
    ...     Select Parameter Settings Tab
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Click on Element     ${parameter_settings_tab}

Check Parameter Settings Tab Selected
    [Documentation]     Check Parameter Settings tab selected
    ...
    ...     Examples:
    ...     Check Parameter Settings tab selected
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Verify Element State     ${parameter_settings_tab}            selected

Check Access Protection Tab Selected
    [Documentation]     Check Access Protection tab selected
    ...
    ...     Examples:
    ...     Check Access Protection tab selected
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Verify Element State     ${access_protection_tab}            selected

Toggle Synchronize All Reading Stations
    [Documentation]     Toggle the Synchronize All Reading Stations and return the current status
    ...
    ...     Examples:
    ...     Toggle Synchronize All Reading Stations        ${synchronize_all_reading_stations_toggle}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    ...
    ...     Return:
    ...     - Current status
    ${status}=      User Toggle Switch And Return Status        ${synchronize_all_reading_stations_toggle}
    [Return]        ${status}

Add Value Set In Reading Station
    [Documentation]     Add Value Set In Reading Station
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *required_value_set*: Number of required value set
    ...
    ...     Examples:
    ...     Add Value Set In Reading Station        ${reading_station_number}        ${required_value_set}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]    ${reading_station_number}        ${required_value_set}
    Add Required Value Set In Reading Station By Plus Sign       ${reading_station_number}        ${required_value_set}

Select Reading Station Memory Bank
    [Documentation]     Select Reading Station Memory Bank
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *value_to_be_set*: Memory bank value to be set
    ...
    ...     Examples:
    ...     Select Reading Station Memory Bank        ${reading_station_number}        ${value_set_number}      ${value_to_be_set}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]    ${reading_station_number}        ${value_set_number}      ${value_to_be_set}
    Select Value Set Dropdown Value     ${reading_station_number}        ${value_set_number}      ${memory_bank_dropdown}        ${value_to_be_set}

Enter Reading Station Offset Value
    [Documentation]     Enter Reading Station Offset Value
    ...
    ...     Parameters:
    ...     *reading_station_number*: Number of reading station
    ...     *value_to_be_set*: Memory bank value to be set
    ...
    ...     Examples:
    ...     Enter Reading Station Offset Value        ${reading_station_number}        ${value_set_number}      ${value_to_be_set}
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    [Arguments]    ${reading_station_number}        ${value_set_number}      ${value_to_be_set}
    #ToDo

Check Verified Writing Is Enabled and Check Verified Writing Is Disabled
    [Documentation]     Check Verified Writing Is Enabled and Check Verified Writing Is Disabled
    ...
    ...     Examples:
    ...     Check Verified Writing Is Enabled and Check Verified Writing Is Disabled
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    ${bg_color_before} =    Get Element Background Color Attribute    ${verified_writing_toggle}
    Click On Element      ${verified_writing_toggle}
    ${bg_color_after} =    Get Element Background Color Attribute    ${verified_writing_toggle}
    should not be equal as strings     ${bg_color_before}       ${bg_color_after}

Verify Number Of Reading Stations Removal For Tag Access
    [Documentation]     Verify Number Of Reading Stations Removal For Tag Access
    ...
    ...     Examples:
    ...     Verify Number Of Reading Stations Removal For Tag Access
    ...
    ...     Preconditions:
    ...     - Tag access page is already open
    Add Number Of Reading Stations With Port        4
    Remove Reading Stations From Antenna Parameters And Verify Count In Tag Access

Add Number Of Reading Stations With Port
    [Documentation]     User Should be Verify Test Of Number Of Reading Stations For Tag Access
    ...
    ...     Parameters:
    ...     *Expected_Reading_Station_Count*: Expected reading station count
    ...
    ...     Examples:
    ...     Add Number Of Reading Stations With Port        ${Expected_Reading_Station_Count}
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    [Arguments]     ${Expected_Reading_Station_Count}
    Change Number Of Reading Stations Count     ${Expected_Reading_Station_Count}
    ${Expected_RS}    Convert To Integer     ${Expected_Reading_Station_Count}
    FOR    ${rs_count}    IN RANGE    2    ${Expected_RS+1}
            Add Port In Reading Station     ${rs_count}     1
    END

Remove Reading Stations From Antenna Parameters And Verify Count In Tag Access
    [Documentation]     Remove Reading Stations From Antenna Parameters And Verify Count In Tag Access
    ...
    ...     Examples:
    ...     Remove Reading Stations From Antenna Parameters And Verify Count In Tag Access
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Select Tag Access Tab
    ${count}=       Get Tag Access Reading Station Count
    should be equal as strings     ${count}     4
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     2
    Select Tag Access Tab
    ${count}=       Get Tag Access Reading Station Count
    should be equal as strings     ${count}     2
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     3
    Select Tag Access Tab
    ${count}=       Get Tag Access Reading Station Count
    should be equal as strings     ${count}     3
    User Navigate To Antenna Parameters Tab
    Change Number Of Reading Stations Count     1
    Select Tag Access Tab
    ${count}=       Get Tag Access Reading Station Count
    should be equal as strings     ${count}     1

User Change Reading Station Count And Add Configuration In Tag Access
    [Documentation]     User Change Reading Station Count And Add Configuration In Tag Access
    ...
    ...     Examples:
    ...     User Change Reading Station Count And Add Configuration In Tag Access
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Change Number Of Reading Stations Count     4
    Select Tag Access Tab
    Add Memory Bank To Reading Station      1
    Add Memory Bank To Reading Station      2
    User Change Memory Bank Value Of Reading Station     2       2       3
    User Change Memory Bank Value Of Reading Station     2       1       2
    Add Memory Bank To Reading Station      3
    User Change Memory Bank Value Of Reading Station     3       1       3
    User Change Memory Bank Value Of Reading Station     3       2       1
    Add Memory Bank To Reading Station      4
    Add Memory Bank To Reading Station      4

User Verify Deletion On Changed Parameters In Tag Access
    [Documentation]     User Verify Deletion On Changed Parameters In Tag Access
    ...
    ...     Examples:
    ...     User Verify Deletion On Changed Parameters In Tag Access
    ...
    ...     Preconditions:
    ...     - Antenna Parameter page is already open
    Delete Port Of Reading Station And Verify      4       3
    Delete Port Of Reading Station And Verify      4       2