*** Settings ***
Library    BuiltIn

Resource    ../keywords/some_keyword.robot

*** Keywords ***
Some Keyword In File
    Log To Console    Some Keyword From In File

*** Test Cases ***
Test Case With Keyword
    Some Keyword In File
    Some Keyword From Other File

# robot -d result ./testcases/05_keyword.robot