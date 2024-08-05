*** Settings ***
Documentation       172.25.125.139
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

NTP Form Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3415|Thanos_01-3415]
    [Tags]    Thanos_01-3415
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To NTP Form
    Then User Verify NTP form

Verify Switch Activate NTP
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3416|Thanos_01-3416]
    [Tags]    Thanos_01-3416
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To NTP Form
    Then User Verify Switch Activate NTP

Verify Number Of Supported NTP Servers
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3417|Thanos_01-3417]
    [Tags]    Thanos_01-3417
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To NTP Form
    Then User Verify Number Of Supported NTP Servers