*** Variables ***

${tag_access_tab}     //div[contains(text(),'Tag access')]
${access_protection_tab}     //div[contains(text(),'Access protection')]
${parameters_settings_tab}     //div[contains(text(),'Parameters settings')]
${read_and_write_access_tab}     //div[contains(text(),'Read and write access')]
${access_password_input}        //*[contains(text(),"Access protection and passwords")]//following::input[1]
${kill_password_input}        //*[contains(text(),"Access protection and passwords")]//following::input[2]
${error_toast_msg_container}        //*[contains(@class,"ifm-message-toast-text-container ng")]
${verified_writing_toggle}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Verified writing')])//preceding::span[1]
${tag_access_reading_station}      //app-rs-memory-bank


${transmit_power_minimum_value_error_message}       Minimum value: 1000
${transmit_power_maximum_value_error_message}       Maximum value: 3000
${antenna_type_maximum_value_error_message}       Maximum value: 32