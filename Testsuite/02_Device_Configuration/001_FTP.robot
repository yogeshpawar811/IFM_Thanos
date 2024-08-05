*** Settings ***
Documentation       172.25.125.139
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

SFTP Server Configuration Form Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3244|Thanos_01-3244]
    [Tags]    Thanos_01-3244
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify SFTP server configuration form

Input Field Server Name Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3245|Thanos_01-3245]
    [Tags]    Thanos_01-3245
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify Input Field Server Name

Input Port Number Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3247|Thanos_01-3247]
    [Tags]    Thanos_01-3247
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify Input Port Number

Input Server IP Address Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3246|Thanos_01-3246]
    [Tags]    Thanos_01-3246
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Server IP Address

Key Field Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3250|Thanos_01-3250]
    [Tags]    Thanos_01-3250
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Key Field

Password Field Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3249|Thanos_01-3249]
    [Tags]    Thanos_01-3249
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Password Field

Username Field Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3248|Thanos_01-3248]
    [Tags]    Thanos_01-3248
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Username Field

Cancel Button Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3252|Thanos_01-3252]
    [Tags]    Thanos_01-3252
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Cancel Button

Save Button Will Be Tested
    [Documentation]     [https://polarionsy.intra.ifm/polarion/#/project/DTE84x_DTE94x_01/workitem?id=Thanos_01-3251|Thanos_01-3251]
    [Tags]    Thanos_01-3251
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Device Configuration Window
    And User Navigates To SFTP Push
    Then User Verify The Save Button