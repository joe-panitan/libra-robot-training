*** Settings ***
Library    BuiltIn

*** Keywords ***
Some Keyword With Argument 1
    [Arguments]    ${var1}    ${var2}
    Log To Console    Example 1: var1: ${var1}, var2: ${var2}

Some Keyword With Argument And Default Value
    [Arguments]    ${var1}    ${var2}=World
    Log To Console    Example 2: var1: ${var1}, var2: ${var2}

I Want ${fruit} Naja
    Log To Console    Fruit: ${fruit}

Some Keyword With "${value}" Naja
    Log To Console    "Value": ${value}

Some Keyword With '${value}' Naja
    Log To Console    'Value': ${value}

*** Test Cases ***
Test Call Some Keyword With Argument
    Some Keyword With Argument 1    Hello    World
    Some Keyword With Argument 1    var2=Hello    var1=World
    Some Keyword With Argument And Default Value    Hello
    Some Keyword With Argument And Default Value    Hello    Naja
    I Want apple Naja
    I Want 'banana' Naja
    I Want "orange" Naja
    Some Keyword With "Shoes" Naja
    Some Keyword With 'Table' Naja

# robot -d result ./testcases/10_pass_argument.robot