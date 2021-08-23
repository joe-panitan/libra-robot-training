*** Settings ***
Library    BuiltIn

Library    ../pythonlibs/StringUtils.py

*** Test Cases ***
How To Call Python

    ${hello}    none to hello    ${None}
    Log To Console    ${hello}

    ${hello}    none_to_hello    ${None}
    Log To Console    ${hello}

    ${hello}    None To Hello    ${None}
    Log To Console    ${hello}

# robot -d result ./testcases/09_python_lib.robot

