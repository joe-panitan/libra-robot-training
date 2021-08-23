*** Settings ***
Library    BuiltIn

*** Test Cases ***
Test Case Hello World
    Log To Console    Hello World

    ${var_hello}    Set Variable    Hello
    ${var_world}    Set Variable    World
    Log To Console    var_hello + var_world: ${var_hello} ${var_world}

    ${var_hello_world_1}    Catenate    ${var_hello}    ${var_world}
    ${var_hello_world_2}    Catenate    SEPARATOR=    ${var_hello}    ${var_world}
    Log To Console    var_hello_world_1: ${var_hello_world_1}
    Log To Console    var_hello_world_2: ${var_hello_world_2}

# robot -d result ./testcases/01_helloworld.robot