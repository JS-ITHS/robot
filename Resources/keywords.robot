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
    [Arguments]  ${search_term}
    Enter Search Term  ${search_term}
    Submit Search
    Verify Search Completed
Enter Search Term
    [Arguments]  ${search_term}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]   ${search_term}
Submit Search
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
Verify Search Completed
    Wait Until Page Contains Element  //*[@id="category"]/hgroup/h1/em
    ${element_text}  Get Text  //*[@id="category"]/hgroup/h1/em
    ${actual_amount}  convert into number  ${element_text}
    Should Be True  ${actual_amount} > 0
End Web Test
    Close Browser
