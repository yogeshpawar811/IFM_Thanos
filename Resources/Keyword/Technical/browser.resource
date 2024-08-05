*** Settings ***

*** Variables ***

*** Keywords ***
Initialise Browser With dettlx590
    [Documentation]     Initialise Browser With dettlx590
    ...
    ...     Examples:
    ...     Initialise Browser With dettlx590
    ...
    ...     Preconditions:
    ...     - Machine should be in IFM network
    New Browser    ${BROWSER}    headless=${HEADLESS_MODE}
    New Context    viewport={'width': 1200, 'height': 1000}
    Set Browser Timeout    ${DEFAULT_TIMEOUT}
    New Page    ${ENVIRONMENT}