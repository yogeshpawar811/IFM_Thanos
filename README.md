# Thonos_Web_Testing
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
# Testing of Thanos using Browser Library

Testing of Thanos

## Getting started

The easiest and less intrusive way to use this project is to run everything in an virtual environment

### Prepare the virtual environment

Python 3 should have all batteries included for creating an virtual environment
```
$ python3 -m venv venv
```

### Using the virtual environment

After setting the virtual environment up we just need to activate it

```
$ source venv/bin/activate
```

You will notice by the prefix `(venv)` of your shell's prompt that you are inside the virtual env.

### Escaping the virtual environment

You may want to get rid of the virtual environment for any reason, this is as easy as entering the virtual environment

```
(venv) $ deactivate
```


## Installation of the dependencies

All required dependencies are defined in the file `requirements.txt` please ensure you are in the virtual environment. Remember this prefix `(venv)`

```
(venv) $ pip install -r requirements.txt
```

## Executing the test cases using Robot Framework

```
(venv) $ robot -x junitresult.xml --listener listener.py testsuite
```

### Executing a specific test case using Robot Framework

```
(venv) $ robot -i Test_Tag -x junitresult.xml --listener listener.py testsuite
```

[Robot Framework](https://robotframework.org) Browser library powered by [Playwright](https://playwright.dev/). Moving browser automation to year 2023!

Aiming for :rocket: speed, :white_check_mark: reliability and :microscope: visibility.

See [keyword documentation](https://marketsquare.github.io/robotframework-browser/Browser.html) and
[web page](https://robotframework-browser.org/) for more details.

# Installation instructions

Only Python 3.7 or newer is supported.

1. Install node.js e.g. from https://nodejs.org/en/download/
2. Update pip `pip install -U pip` to ensure latest version is used
3. Install robotframework-browser from the commandline: `pip install robotframework-browser`
4. Install the node dependencies: run `rfbrowser init` in your shell
  - if `rfbrowser` is not found, try `python -m Browser.entry init`

Please note that by default Chromium, Firefox and WebKit browser are installed, even those would be already
installed in the system. The installation size depends on the operating system, but usually is +700Mb.
It is possible to skip browser binaries installation with `rfbrowser init --skip-browsers` command, but then user
is responsible for browser binary installation.

Or use the [docker images](https://github.com/MarketSquare/robotframework-browser/pkgs/container/robotframework-browser%2Frfbrowser-stable). Documented at [docker/README.md](https://github.com/MarketSquare/robotframework-browser/blob/main/docker/README.md).

## Update instructions

To upgrade your already installed robotframework-browser library

1. Update from commandline: `pip install -U robotframework-browser`
2. Clean old node side dependencies and browser binaries: `rfbrowser clean-node`
3. Install the node dependencies for the newly installed version: `rfbrowser init`

## Uninstall instructions

To completely install library, including the browser binaries installed by Playwright,
run following commands:
1. Clean old node side dependencies and browser binaries: `rfbrowser clean-node`
2. Uninstall with pip: `pip uninstall robotframework-browser`

# Examples

### Testing with [Robot Framework](https://robotframework.org)
```RobotFramework
*** Settings ***
Library   Browser

*** Test Cases ***
Example Test
    New Page    https://playwright.dev
    Get Text    h1    contains    Playwright
```
### and testing with [Python](https://python.org).
```python
import Browser
browser = Browser.Browser()
browser.new_page("https://playwright.dev")
assert 'Playwright' in browser.get_text("h1")
browser.close_browser()
```

### and extending with JavaScript

```JavaScript
async function myGoToKeyword(url, page, logger) {
    logger("Going to " + url)
    return await page.goto(url);
}
myGoToKeyword.rfdoc = "This is my own go to keyword";
exports.__esModule = true;
exports.myGoToKeyword = myGoToKeyword;
```

```RobotFramework
*** Settings ***
Library   Browser  jsextension=${CURDIR}/mymodule.js

*** Test Cases ***
Example Test
   New Page
   myGoToKeyword   https://www.robotframework.org
```

See [example](https://github.com/MarketSquare/robotframework-browser/tree/main/docs/examples/babelES2015).
Ready made extensions and a place to share your own at [robotframework-browser-extensions](https://github.com/MarketSquare/robotframework-browser-extensions).

### Ergonomic selector syntax, supports chaining of `text`, `css`  and `xpath` selectors

```RobotFramework
# Select element containing text "Login" with text selector strategy
# and select it's parent `input` element with xpath
Click    "Login" >> xpath=../input
# Select element with CSS strategy and select button in it with text strategy
Click    div.dialog >> "Ok"
```
### Evaluate in browser page
```RobotFramework
New Page   ${LOGIN_URL}
${ref}=    Get Element    h1
Get Property    ${ref}    innerText    ==    Login Page
Evaluate JavaScript    ${ref}    (elem) => elem.innerText = "abc"
Get Property    ${ref}    innerText    ==    abc
```
### Asynchronously waiting for HTTP requests and responses
```RobotFramework
# The button with id `delayed_request` fires a delayed request. We use a promise to capture it.
${promise}=    Promise To    Wait For Response    matcher=    timeout=3s
Click    \#delayed_request
${body}=    Wait For    ${promise}
```
### Device Descriptors
```RobotFramework
${device}=  Get Device  iPhone X
New Context  &{device}
New Page
Get Viewport Size  # returns { "width": 375, "height": 812 }
```
### Sending HTTP requests and parsing their responses
```RobotFramework
&{response}=    HTTP    /api/post    POST    {"name": "John"}
Should Be Equal    ${response.status}    ${200}
```

### Parallel test execution using Pabot

You can let RF Browser spawn separate processes for every pabot process. This is very simple, just run the tests normally using pabot (see https://github.com/mkorpela/pabot#basic-use ). However if you have small tests do not use `--testlevelsplit`, it will cause lots of overhead because tests cannot share the browsers in any case.

You can share the node side RF Browser processes by using the `ROBOT_FRAMEWORK_BROWSER_NODE_PORT` environment variable, and `from Browser.utils import spawn_node_process` helper ([see the docs for the helper](https://github.com/MarketSquare/robotframework-browser/blob/a7d3e59a1e8e3e75f64b9146a088385445a5af30/Browser/utils/misc.py#L35) ). This saves some overhead based on how many splits of tests you are running. Clean up the process afterwards.

### Re-using authentication credentials

- Figure out how the page is storing authentication
- If it is localstorage or cookies `Save Storage State` should work. See usage example: https://marketsquare.github.io/robotframework-browser/Browser.html#Save%20Storage%20State

# Development

See [CONTRIBUTING.md](CONTRIBUTING.md) for development instructions.


## Contributors

This project is community driven and becomes a reality only through the work of all the people who contribute.
Supported by [Robocorp](https://robocorp.com/) through [Robot Framework Foundation](https://robotframework.org/foundation/).
<!-- ALL-CONTRIBUTORS-LIST:END -->
