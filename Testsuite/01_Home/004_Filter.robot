*** Settings ***
Documentation       DETTLX470
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

Filter Deletion Test
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2241|Thanos_01-2241]
    [Tags]    Thanos_01-2241
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    And User Change Reading Station Count And Add Configuration In Tag Access
    Then User Verify Deletion On Changed Parameters In Tag Access