*** Settings ***
Library    BuiltIn

Suite Setup    Log To Console    Processing Suite Setup
Suite Teardown    Log To Console    Processing Suite Teardown

Test Setup    Log To Console    Processing Test Setup
Test Teardown    Log To Console    Processing Test Teardown

*** Test Cases ***
Test Case 1
    Log To Console    Processing Test Case 1

Test Case 2
    Log To Console    Processing Test Case 2

Test Case 3
    [Setup]    Log To Console    Processing Test Setup Test Case 3
    Log To Console    Processing Test Case 3
    [Teardown]    Log To Console    Processing Test Teardown Test Case 3

# robot -d result ./testcases/06_life_cycle.robot