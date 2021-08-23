*** Settings ***
Library    BuiltIn

Resource    ../keywords/some_keyword.robot

#Suite Setup    Prepare Global Variable

*** Keywords ***
Prepare Global Variable
    Set Global Variable    ${var_1}    global variable 1

    ${var_2}    Set Variable    global variable 2
    ${var_3}    Set Variable    global variable 3
    ${var_4}    Catenate    SEPARATOR=,    ${var_2}    ${var_3}
    Set Global Variable    ${var_4}

*** Test Cases ***
Test Case With Global Variable 1
    Prepare Global Variable
    Log To Console    var_1: ${var_1}
    Log To Console    var_4: ${var_4}

Test Case With Global Variable 2
    Log To Console    var_1: ${var_1}
    Log To Console    var_4: ${var_4}

# robot -d result ./testcases/08_global_variable.robot