*** Settings ***
Documentation  Some basic information about the whole test suite
Resource  ../Resources/keywords.robot
Library  ../Scripts/remove_parenthesis.py
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.mediamarkt.se


*** Test Cases ***
User Can Access Website and Search For Product
    [Documentation]  This is some basic information about the test
    [Tags]  Test 1
    Go To Web Page

User Can Search For A Product
    [Documentation]  This is some basic info about the second test
    [Tags]  Test 2
    Go To Web Page
    Search For Product  Game & Watch

User Can Search For Another Product
    [Documentation]  This is some basic info about the third test
    [Tags]  Test 3
    Go To Web Page
    Search For Product  NINTENDO Switch



