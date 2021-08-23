*** Settings ***
Library    BuiltIn

Resource    ../keywords/some_keyword.robot

*** Keywords ***
Some Keyword
    Set Test Variable    ${var_1}    test variable 1

    ${var_2}    Set Variable    test variable 2
    ${var_3}    Set Variable    test variable 3
    ${var_4}    Catenate    SEPARATOR=,    ${var_2}    ${var_3}
    Set Test Variable    ${var_4}

*** Test Cases ***
Test Case With Test Variable 1
    Some Keyword

    Log To Console    var_1: ${var_1}
    Log To Console    var_4: ${var_4}
    Log To Console    var_2: ${var_2}

Test Case With Test Variable 2
    Log To Console    var_1: ${var_1}
    Log To Console    var_4: ${var_4}

# robot -d result -t "Test Case With Test Variable 1" ./testcases/07_test_variable.robot
# robot -d result -t "Test Case With Test Variable 2" ./testcases/07_test_variable.robot