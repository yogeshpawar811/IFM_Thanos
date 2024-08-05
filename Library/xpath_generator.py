def generate_reading_station_xpath(reading_station_number):
    """
    Function description :
        Generating reading station xpath by passing reading station number.

    Parameters
    ----------
    reading_station_number : int
        Number selection for reading station

    Returns
    -------
    xpath :
        Returning the xpath by adding custom reading station value in xpath

    """

    xpath= "//span[contains(text(),'Reading station "+str(reading_station_number)+"')]//following::button[2]"
    return xpath

def generate_reading_station_port_toggle(reading_station,toggle):
    """
    Function description :
        Generating reading station port toggle xpath.

    Parameters
    ----------
    reading_station : int
        Number selection for reading station
    toggle : int
        toggle sequence

    Returns
    -------
    xpath :
        Returning the xpath by adding custom toggle sequence value
    """

    xpath= "(//*[contains(@class,'m-0 p-0') and contains(text(),'"+str(reading_station)+"')]//following::span[contains(@class,'ifm-input-switch-box-slider')])["+str(toggle)+"]"
    return xpath

def generate_reading_station_toggle(reading_station):
    """
     Function description :
         Generating reading station toggle xpath.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station

     Returns
     -------
     xpath :
         Returning the xpath by adding custom toggle number
     """

    xpath= "(//*[contains(@class,'m-0 p-0') and contains(text(),'"+str(reading_station)+"')]//preceding::span[contains(@class,'ifm-input-switch-box-slider')])[last()]"
    return xpath

def generate_reading_station_port_selection(reading_station, port_number):
    """
     Function description :
         Generating reading station port selection xpath.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station
     port_number : int
         Number for port value selection

     Returns
     -------
     xpath :
         Returning the xpath for reading station port selection
     """

    # xpath = "((//*[contains(@class,'m-0 p-0') and contains(text(),'"+str(reading_station)+"')]//following::*[contains(@class,'ifm-field-sub-text-helper ng-star-inserted') and contains(text(),'Port')])["+str(port_number)+"])//preceding::div[5]"
    # xpath = "//app-rs["+str(reading_station)+"]//app-port["+str(port_number)+"]//ifm-select"
    xpath = "(//app-rs["+str(reading_station)+"]//app-port["+str(port_number)+"]//ifm-select//ifm-field//div//div//div)[1]"
    return  xpath

def generate_reading_station_setting_value_selection(reading_station, port_number,setting_name):
    """
     Function description :
         Generating reading station setting value selection xpath.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station
     port_number : int
         Number for port value selection
     setting_name: str
        Setting name to be selected

     Returns
     -------
     xpath :
         Returning the xpath for reading station setting value selection
     """
    if setting_name=="Port":
        xpath = "(//app-rs["+str(reading_station)+"]//app-port["+str(port_number)+"]//ifm-field//input)[1]"
    elif setting_name == "Cable type":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//input)[2]"
    elif setting_name == "Antenna type":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//input)[3]"
    elif setting_name == "Transmit power":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//input)[4]"
    return  xpath

def generate_reading_station_setting_value_selection_dropdown(reading_station, port_number,setting_name):
    """
     Function description :
         Generating reading station setting value selection xpath.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station
     port_number : int
         Number for port value selection
     setting_name: str
        Setting name to be selected

     Returns
     -------
     xpath :
         Returning the xpath for reading station setting value selection
     """
    if setting_name=="Port":
        xpath = "(//app-rs["+str(reading_station)+"]//app-port["+str(port_number)+"]//ifm-field//button)[1]"
    elif setting_name == "Cable type":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//button)[2]"
    elif setting_name == "Antenna type":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//button)[3]"
    elif setting_name == "Transmit power":
        xpath = "(//app-rs[" + str(reading_station) + "]//app-port[" + str(port_number) + "]//ifm-field//button)[4]"
    return  xpath

def generate_change_port_number_value(port_number):
    """
     Function description :
         Generating change port number value xpath.

     Parameters
     ----------
     port_number : int
         Number for port value selection

     Returns
     -------
     xpath :
         Returning the xpath for change port number value
     """

    # xpath = "//*[contains(@class,'ifm-select-menu-option ng-tns-c81')]//child::*[contains(text(),'"+str(port_number)+"')]"
    # xpath = xpath.split("Port")
    # xpath[0] = xpath[0] + "Port "
    # f_xpath = "".join(xpath)

    # no = str(port_number).split(" ")
    xpath="//ul//ifm-scroll-panel//li["+(str(port_number).split(" "))[1]+"]"
    return xpath

def generate_change_port_setting_value(value):
    """
     Function description :
         Generating change port setting value xpath.

     Parameters
     ----------
     value : str
         Setting name to be selected

     Returns
     -------
     xpath :
         Returning the xpath for change port setting value
     """

    xpath = "//ul//ifm-scroll-panel//*[contains(text(),'"+str(value)+"')]"
    return xpath

def generate_reading_station_setting_input(reading_station, port_number,setting_name):
    """
     Function description :
         Generating reading station setting input xpath by passing custom setting name.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station
     port_number : int
         Number for port value selection
     setting_name: str
        Setting name to be selected

     Returns
     -------
     xpath :
         Returning the xpath for change port setting value
     """

    if setting_name=="Transmit power":
        xpath = "(//*[contains(@class,'m-0 p-0') and contains(text(),'"+str(reading_station)+"')]//following::*[contains(@class,'ifm-field-sub-text-helper ng-star-inserted') and contains(text(),'"+str(setting_name)+"')])["+str(port_number)+"]//preceding::input[1]"
    else:
        xpath = "(//*[contains(@class,'m-0 p-0') and contains(text(),'"+str(reading_station)+"')]//following::*[contains(@class,'ifm-field-sub-text-helper ng-star-inserted') and contains(text(),'"+str(setting_name)+"')])["+str(port_number)+"]//following::input[1]"
    return xpath

def generate_delete_port_xpath(reading_station,port_number):
    """
     Function description :
         Generating delete port xpath.

     Parameters
     ----------
     reading_station : int
         Number selection for reading station
     port_number : int
         Number for port value selection

     Returns
     -------
     xpath :
         Returning the xpath for delete port
     """
    xpath = "((.//*[@class='mt-1'])["+str(reading_station)+"]//following::app-port["+str(port_number)+"])//child::*[contains(@class,'button-icon-font ifm-delete ifm-icon ng-star-inserted')]"
    return xpath

def generate_xpath_by_text(text):
    """
     Function description :
         Generating xpath by text.

     Parameters
     ----------
     text : string
         string which required in xpath

     Returns
     -------
     xpath :
         Returning the xpath
     """
    xpath = "(//*[contains(text(),'"+str(text)+"')])[1]"
    return xpath