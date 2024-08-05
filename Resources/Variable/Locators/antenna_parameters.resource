*** Variables ***
${reading_station}        //app-rs
${port}        //app-port
${button}        //button
${input}        //ifm-checkbox
${span}        //span
${scroll_panel_elements}        (//ifm-scroll-panel)[2]//li
${value}        (${reading_station}${port}${input})[5]
${ifm_font_icon}        //ifm-font-icon

${ifm_checkbox}        //ifm-checkbox
${div}        //div

${memory_bank_port}     //app-memory-bank

${dropdown_choice1}     ((//ifm-scroll-panel)[2]//li//span)[1]
${dropdown_choice2}     ((//ifm-scroll-panel)[2]//li//span)[2]
${dropdown_choice3}     ((//ifm-scroll-panel)[2]//li//span)[3]
${dropdown_choice4}     ((//ifm-scroll-panel)[2]//li//span)[4]

${reading_station1}     1
${reading_station2}     2
${reading_station3}     3
${reading_station4}     4
${port_number1}      1
${port_number2}      2
${port_number3}      3
${port_number4}      4
${port_dropdown}       1
${cable_type_dropdown}       2
${antenna_type_dropdown}       3

${antenna_parameters_tab}        //div[contains(text(),'Antenna parameters')]
${reading_station_tab}        //div[contains(text(),'Reading station')]
${basic_settings_tab}        //div[contains(text(),'Basic settings')]
${expert_settings_tab}        //div[contains(text(),'Expert settings')]

${lock_icon}        //*[contains(@class,'button-icon-font ifm-icon ifm-lock_closed ng-star-inserted')]
${unlock_icon}        //*[contains(@class,'navbar-icon ifm-icon ifm-lock_open ng-star-inserted')]
${password_input}       (//*[contains(@class,'ifm-input cdk-text-field-autofill-monitored')])
${login_btn}        //span[contains(text(),'Login')]
${Application_tab}        //*[contains(text(),'Application')]
${Dashboard_tab}        //*[contains(text(),'Dashboard')]
${Service_report_&_Log_tab}        //*[contains(text(),'Service report & Log')]
${Device_configuration_tab}        //*[contains(text(),'Device configuration')]


${wizard_plus_sign}        //button[contains(@id,'applications_add')]
${app_name_input}        ((//div[contains(@class,'ifm-field-box-wrapper-input')])[1])//textarea
${app_description_input}        ((//div[contains(@class,'ifm-field-box-wrapper-input')])[2])//textarea
${app_author_input}        ((//div[contains(@class,'ifm-field-box-wrapper-input')])[3])//textarea
${ok_btn}        (//*[contains(@class,'ifm-dialog-footer')]//button)[1]
${cancel_btn}        (//*[contains(@class,'ifm-dialog-footer')]//button)[2]

${cancel_btn}        (//*[contains(@class,'ifm-dialog-footer')]//button)[2]


${wizard1}        (//div[@role='radio'])[1]
${wizard2}        (//div[@role='radio'])[2]
${wizard3}        (//div[@role='radio'])[3]
#${Number_of_reading_stations_dropdown}        (//*[contains(text(),'Number of reading stations:')]//following::*[contains(@class,'ifm-field-box')])[1]
#${Number_of_reading_stations_dropdown}        (//app-rs-settings//ifm-select//div//div//div)[1]
#${Number_of_reading_stations_dropdown}        //input[@id='rs-settings_rs-count']//following::span[1]
${Number_of_reading_stations_dropdown}        //html/body/app-root/app-wizards/app-expert-mode/section/div/div[1]/app-antenna-settings/section/div/ifm-scroll-panel/div/div[1]/app-rs-settings/div/div[2]/div[2]/ifm-select/ifm-field/div/div/div[1]/div
${reading_station_div}        //*[contains(@class,'row bg-basic-content align-items-center p-3')]
${confirm_delete_reading_station}        //*[contains(text(),'Delete station')]
${synchronize_all_ports_toggle}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Synchronize All Ports')])//preceding::span[1]
${synchronize_all_ports_toggle_status}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Synchronize All Ports')])//preceding::input[1]
${synchronize_basic_settings_toggle}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Synchronize Basic Settings')])//preceding::span[1]
${synchronize_expert_settings_toggle}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Synchronize Expert Settings')])//preceding::span[1]
${close_process}        /html/body/app-root/app-main/div/div[3]/app-dashboard/div/div/div[2]/app-epc-monitor/section/app-epc-monitor-header/div/div[2]/button[2]/span/span[2]

${test_btn}        //span[contains(text(),'TEST')]
${save_btn}        //span[contains(text(),'SAVE')]
${cancel_btn}        //span[contains(text(),'CANCEL')]

#EPC Monitor
${edit_epc}     //button[@*[contains(., 'edit')]]
${epc_display_radio}     //mat-radio-button[1]
${tid_display_radio}     //mat-radio-button[2]
${user_display_radio}     //mat-radio-button[3]
${epc_setting_save}     //app-epc-display-settings//*[contains(text(),'SAVE')]
${epc_setting_cancel}     //app-epc-display-settings//*[contains(text(),'CANCEL')]

${epc_length_column}     (//app-epc-list//div)[1]//div[1]
${epc_data_column}     (//app-epc-list//div)[1]//div[2]

${epc_display_setting_coding}     (//app-epc-display-settings//button)[1]
${epc_display_setting_mode}     (//app-epc-display-settings//button)[3]

${epc_display_setting_coding_ascii}     //app-epc-display-settings//following::li//span[contains(text(),'ASCII')]
${epc_display_setting_coding_hex}     //app-epc-display-settings//following::li//span[contains(text(),'HEX')]
${epc_display_setting_coding_dec}     //app-epc-display-settings//following::li//span[contains(text(),'DEC')]

${cdk_virtual_scroll_viewport_first_data_value}     (//cdk-virtual-scroll-viewport//div//div)[1]//div[2]
${epc_monitor_coding_value}     (//app-epc-monitor//table[1]//td)[4]

${tooltip}      //div[@class='ifm-tooltip']
${scroll_viewport}      //cdk-virtual-scroll-viewport//following::div[contains(@class,'id-tag-status')]

${cable_value_less_than_minimum_value_error_message}       Minimum value: 0
${cable_value_greater_than_maximum_value_error_message}       Maximum value: 65

${cable_value_error_max}       67
${cable_value_error_min}       -11
${cable_value_valid}       20