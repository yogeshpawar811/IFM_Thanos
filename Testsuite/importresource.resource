*** Settings ***
Library           Browser
Library           String
Library           Collections
Resource    ../Resources/Variable/Locators/filter.resource
Resource    ../Resources/Variable/Locators/antenna_parameters.resource
Resource    ../Resources/Variable/Locators/tag_access.resource
Resource    ../Resources/Variable/Locators/device_configuration.resource
Resource    ../Resources/Keyword/Technical/antenna_parameter_elements.resource
Resource    ../Resources/Keyword/Technical/device_configuration_elements.resource
Resource    ../Resources/Keyword/Technical/device_configuration_ntp_elements.resource
Resource    ../Resources/Keyword/Technical/xpath_generator.resource
Resource    ../Resources/Keyword/Technical/button.resource
Resource    ../Resources/Keyword/Technical/dropdown.resource
Resource    ../Resources/Keyword/Technical/elements.resource
Resource    ../Resources/Keyword/Technical/scroll.resource
Resource    ../Resources/Keyword/Technical/application.resource
Resource    ../Resources/Keyword/Technical/common.resource
Resource    ../Resources/Keyword/Technical/landing_page.resource
Resource    ../Resources/Keyword/Technical/tag_access_elements.resource
Resource    ../Resources/Keyword/Technical/text_interaction.resource
Resource    ../Resources/Keyword/Technical/filter.resource
Resource    ../Resources/Keyword/Technical/string_operations.resource
Resource    ../Resources/Keyword/Functional/filter.resource
Resource    ../Resources/Keyword/Functional/tag_access.resource
Resource    ../Resources/Keyword/Functional/antenna_parameter.resource
Resource    ../Resources/Keyword/Functional/device_configuration.resource

Library     ../Library/xpath_generator.py

*** Variables ***
#${environment}       http://dettlx470
#${environment}       http://dettlx590
${environment}       http://172.25.125.139
${BROWSER}            chromium
${HEADLESS_MODE}      false
${DEFAULT_TIMEOUT}    30 seconds

${DEFAULT_APP_NAME}     Thanos_Test_App
${DEFAULT_APP_DESCRIPTION}    Thanos_Test_App_Description
${DEFAULT_AUTHOR_NAME}    Yogesh