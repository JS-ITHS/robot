*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
Go To Web Page
    Load Page
    Verify Page Loaded
Load Page
    Go To  ${URL}
Verify Page Loaded
    Wait Until Page Contains  Kampanj:
Search For Product
    [Arguments]  ${search_term}  ${search_result}
    Enter Search Term  ${search_term}
    Submit Search
    Verify Search Completed  ${search_result}
Enter Search Term
    [Arguments]  ${search_term}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]   ${search_term}
Submit Search
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
Verify Search Completed
    [Arguments]  ${search_result}
    Wait Until Page Contains  ${search_result}
End Web Test
    Close Browser
