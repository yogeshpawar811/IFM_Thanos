*** Settings ***

*** Variables ***

*** Keywords ***

User Navigates To NTP Form
    [Documentation]     User Navigates To NTP Form
    ...
    ...     Examples:
    ...     User Navigates To NTP Form
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click on element        ${ntp_tab}

User Verify NTP form
    [Documentation]     User Verify NTP form
    ...
    ...     Examples:
    ...     User Verify NTP form
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    ${ntp_header}        Generate Xpath By Text        Network time protocol
    Verify Element State     ${ntp_header}            visible

User Verify Switch Activate NTP
    [Documentation]     User Verify Switch Activate NTP
    ...
    ...     Examples:
    ...     User Verify Switch Activate NTP
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Verify Element State     ${ntp_ip_address1}             disabled
    Verify Element State     ${ntp_ip_address2}             disabled
    Verify Element State     ${ntp_seconds}             disabled
    Verify Element State     ${ntp_continents}             disabled
    Verify Element State     ${ntp_time_zones}             disabled
    Verify Element State     ${ntp_date_and_time}             disabled

    Click on element        ${activate_ntp_toggle}
    Verify Element State     ${ntp_ip_address1}             enabled
    Verify Element State     ${ntp_ip_address2}             enabled
    Verify Element State     ${ntp_seconds}             enabled
    Verify Element State     ${ntp_continents}             enabled
    Verify Element State     ${ntp_time_zones}             enabled
    Verify Element State     ${ntp_date_and_time}             enabled

    Click on element        ${activate_ntp_toggle}
    Verify Element State     ${ntp_ip_address1}             disabled
    Verify Element State     ${ntp_ip_address2}             disabled
    Verify Element State     ${ntp_seconds}             disabled
    Verify Element State     ${ntp_continents}             disabled
    Verify Element State     ${ntp_time_zones}             disabled
    Verify Element State     ${ntp_date_and_time}             disabled

User Verify Number Of Supported NTP Servers
    [Documentation]     User Verify Number Of Supported NTP Servers
    ...
    ...     Examples:
    ...     User Verify Number Of Supported NTP Servers
    ...
    ...     Preconditions:
    ...     - Thanos Application should be open
    Click on element        ${activate_ntp_toggle}
    ${ele_count}        Get Element Count        ${ntp_ip_address}
    Should Be True     '${ele_count}'<='2'