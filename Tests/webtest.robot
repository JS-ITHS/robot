*** Settings ***
Documentation  Some basic information about the whole test suite
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website
    [Documentation]  This is some basic information about the test
    [Tags]  Test 1
    Open Browser  about:blank  chrome
    Go To  https://www.mediamarkt.se
    Wait Until Page Contains  Kampanj:
    Close Browser

