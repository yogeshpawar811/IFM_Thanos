*** Settings ***

*** Variables ***

*** Keywords ***

Create String With Length
    [Documentation]    Creates a string with a specified length using a cyclic pattern of uppercase letters (A-Z).
    ...
    ...     Parameters:
    ...     *length*: length of string
    ...
    ...     Examples:
    ...     Create String With Length        ${length}
    ...
    ...     Return:
    ...     - string
    [Arguments]    ${length}
    ${my_string}=    Evaluate    ''.join(chr(i % 26 + 65) for i in range(${length}))
    [Return]    ${my_string}