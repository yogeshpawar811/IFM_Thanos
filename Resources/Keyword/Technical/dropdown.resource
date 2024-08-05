*** Settings ***

*** Variables ***

*** Keywords ***
Drag And Drop Source To Dest
    [Documentation]     Executes a Drag&Drop operation from the element selected by source to
    ...     the element selected by dest
    ...
    ...     Parameters:
    ...     *source*: source location of element
    ...     *dest*: destination location of element
    ...
    ...     Examples:
    ...     Drag And Drop source to dest        ${source}        ${dest}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${source}        ${dest}
    Drag And Drop    ${source}    ${dest}

Drag And Drop By Coordinates Source To Dest
    [Documentation]     Executes a Drag&Drop operation from a coordinate to another coordinate
    ...
    ...     Parameters:
    ...     *from_x*: from x coordinate
    ...     *from_y*: from y coordinate
    ...     *to_x*: to x coordinate
    ...     *to_y*: to y coordinate
    ...     *steps*: exact steps to be follow
    ...
    ...     Examples:
    ...     Drag And Drop By Coordinates source to dest        ${from_x}        ${from_y}       ${to_x}        ${to_y}      ${steps}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${from_x}        ${from_y}       ${to_x}        ${to_y}      ${steps}
    Drag And Drop By Coordinates
    ...    from_x=${from_x}    from_y=${from_y}
    ...    to_x=${to_x}    to_y=${to_y}    steps=${steps}

Drag And Drop Relative To Source To Dest
    [Documentation]     Executes a Drag&Drop operation from the element selected by selector_from to
    ...     coordinates relative to the center of that element.
    ...     This keyword can be handy to simulate swipe actions
    ...
    ...     Parameters:
    ...     *source*: source location of element
    ...     *pixel*: element pixels to move
    ...
    ...     Examples:
    ...     Drag And Drop Relative To source to dest        ${source}        ${dest}
    ...
    ...     Preconditions:
    ...     - Element should be visible
    [Arguments]    ${source}        ${pixel}
    Drag And Drop Relative to    ${source}    ${pixel}    0     # Slides the element 20 pixel to the left