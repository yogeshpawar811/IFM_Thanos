*** Settings ***
Documentation       DETTLX470
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

Access And Kill Password Input Test
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2144|Thanos_01-2144]
    [Tags]    Thanos_01-2144
    Skip
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    When Select Tag Access Tab
    When Select Access Protection Tab
    Then User Should be Verify Kill Password Input Test

Checkbox Verified Writing
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2114|Thanos_01-2114]
    [Tags]    Thanos_01-2114
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    When Select Tag Access Tab
    When Select Parameters Settings Tab
    Then Check Verified Writing Is Enabled and Check Verified Writing Is Disabled

Test Of Number Of Reading Stations for Tag Access
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2145|Thanos_01-2145]
    [Tags]    Thanos_01-2145
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify Number Of Reading Stations Removal For Tag Access

Access Password Input Test
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2143|Thanos_01-2143]
    [Tags]    Thanos_01-2143
    Skip
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    When Select Tag Access Tab
    When Select Access Protection Tab
    Then User Should be Verify Access Password Input Test