*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary    run_on_failure=Nothing

*** Test Cases ***
Test Google Website
    [Tags]    google
    Open Browser    https://www.google.com/    Chrome
    Input Text    //*[@name="q"]    shopee
    Wait Until Element Is Visible    //*[@name="btnK"]
    Click Element    //*[@name="btnK"]
    Page Should Contain    Shopee
    Sleep    5s
    [Teardown]    Close Browser

# robot -d result -t "Test Google Website" .

Test Youtube Website
    [Tags]    youtube
    Open Browser    https://www.youtube.com/    headlesschrome
    Wait Until Element Is Visible    //*[@name="search_query"]
    Input Text    //*[@name="search_query"]    Robot Framework
    Wait Until Element Is Visible    //*[@id="search-icon-legacy"]
    Click Element    //*[@id="search-icon-legacy"]
    Wait Until Page Contains    Robot Framework
#    Page Should Contain    Robot Framework
    Sleep    3s
    [Teardown]    Close Browser

# robot -d result -t "Test Youtube Website" .
