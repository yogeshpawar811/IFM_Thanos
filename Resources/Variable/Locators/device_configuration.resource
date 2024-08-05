*** Variables ***
${device_configuration_tab}        //span[contains(text(),'Device configuration')]
${ftp_tab}        //div[contains(@id,'device-configuration_navbar-ftp')]
${ntp_tab}        //div[contains(@id,'device-configuration_navbar-ntp')]
${sftp_push_sign}        //button[contains(@id,'ftp_open-create-ftp-server-modal')]
${app_ftp_server}        //app-ftp-server

${server_name_input}        //input[contains(@id,'ftp-modal-server-name')]
${port_number_input}        //input[@placeholder='xx']
${server_ip_input}        //input[@placeholder='xxx.xxx.xxx.xxx']
${key_field_input}        //input[@placeholder='Key']
${password_field_input}        //input[@placeholder='Password']
${username_field_input}        //input[@placeholder='User']

${assestive_text_error_notify}        //*[contains(@class,'ng-touched ng-dirty ng-invalid')]
${assestive_port_text_error_notify}        //ifm-input[contains(@class,'ng-invalid ng-touched ng-dirty')]

${20_char_length}        ifmthanosqqqqqqqqqqq
${21_char_length}        ifmthanosqqqqqqqqqqqt

${int_1000}        1000
${int_0}        0
${int_negative_1}        -1
${int_65535}        65535
${int_65536}        65536

${valid_server_ip_address}        168.168.168.168
${invalid_server_ip_address1}        168.168.168.256
${invalid_server_ip_address2}        168.168.-68.250

#NTP
${activate_ntp_toggle}        (//*[contains(@class,'ifm-input-switch-label') and contains(text(),'Activate NTP')])//preceding::span[1]
${ntp_ip_address}        //input[@placeholder='IP address']
${ntp_ip_address1}        (//input[@placeholder='IP address'])[1]
${ntp_ip_address2}        (//input[@placeholder='IP address'])[2]
${ntp_seconds}        //input[@placeholder='Seconds']
${ntp_continents}        (//*[contains(@class,'sub-title mt-3') and contains(text(),'Time zone settings')])//following::ifm-font-icon[1]
${ntp_time_zones}        (//*[contains(@class,'sub-title mt-3') and contains(text(),'Time zone settings')])//following::ifm-font-icon[2]
${ntp_date_and_time}        (//*[contains(@class,'sub-title mt-3') and contains(text(),'Time zone settings')])//following::ifm-font-icon[3]
