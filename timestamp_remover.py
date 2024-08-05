def juniteresult_timestamp_remover():
    """
    Function description :
        Removing timestamp tag from junitresult.xml file and create and save new file into final_junit_result.xml.

    Parameters
    ----------
    NA

    Returns
    -------
    NA

    """
    file= open("junitresult.xml")
    file2 = open("final_junit_result.xml", "w")
    for file_data in file:
        if "timestamp" in file_data:
            writeable_line=  file_data.split(" timestamp=")[0]+">"
            file2.write(writeable_line+ "\n")
        else:
            file2.write(file_data)


juniteresult_timestamp_remover()