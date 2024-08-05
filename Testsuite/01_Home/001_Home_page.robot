*** Settings ***
Documentation       DETTLX470
Resource            ../importresource.resource
Test Setup  Open Browser And Maximize       ${environment}

*** Test Cases ***

Configuration of the number of reading station in device will be tested
    [Tags]    Thanos_01-1899
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    And User Is Able To Verify Addition Of Reading Station
    Then User Is Able To Verify Deletion Of Reading Station

Function of deleting of reading stations will be tested
    [Tags]    Thanos_01-1900
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    And User Create 4 Reading stations
    Then User Verify The Reading Stations Count By Deleting Stations One By One

Function of adding and removing of ports to reading station will be tested
    [Tags]    Thanos_01-1901
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    And User Create 2 Reading stations
    Then User Verify Function Of Adding And Removing Of Ports To Reading Station

Function/Switch Activate Reading station and Activate port
#    [Tags]    Thanos_01-1902
    [Tags]    tst
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    And User Create 2 Reading stations
    Then User verify Function/Switch Activate Reading station and Activate port

Function synchronize all Ports
    [Tags]    Thanos_01-1903
    Given The User Is Logged In To The Thanos Application
    When User Navigates To Antenna Parameters Window
    Then Synchronize all ports switch should be off
    And User create 2 reading stations
    Then User verify synchronize all ports function