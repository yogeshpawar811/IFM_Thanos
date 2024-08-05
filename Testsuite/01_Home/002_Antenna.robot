*** Settings ***
Documentation       DETTLX470
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

User defined Antenna gain value validation
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2248|Thanos_01-2248]
    [Tags]    Thanos_01-2248
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Add Reading Station
    And Validate User Defined Antenna Gain Value

Test of number of reading stations for filter
    [Documentation]    [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2171|Thanos_01-2171]
    [Tags]    Thanos_01-2171
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then User Able To Verify Number Of Reading Stations For Filter

Kill password input test
    [Documentation]    [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2144|Thanos_01-2144]
    [Tags]    Thanos_01-2144
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then User Able To Verify Number Of Reading Stations For Filter

Test Radiated Power Value Validations
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2104|Thanos_01-2104]
    [Tags]    Thanos_01-2104
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify Test Radiated Power Value Validations

Selection Of The Data To Be Shown In SDI Interface
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2310|Thanos_01-2310]
    [Tags]    Thanos_01-2310
    Skip        msg= TID and USER removed from UI
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify Selection Of The Data To Be Shown In SDI Interface

Selection Of The Format To Be Shown In SDI Interface
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2318|Thanos_01-2318]
    [Tags]    Thanos_01-2318
    Skip        msg= TID and USER removed from UI
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify Selection Of The Format To Be Shown In SDI Interface

Tooltips test
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2327|Thanos_01-2327]
    [Tags]    Thanos_01-2327
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify Tooltips

User Defined Cable Attenuation Value Validation
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-2096|Thanos_01-2096]
    [Tags]    Thanos_01-2096
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Verify User Defined Cable Attenuation Value