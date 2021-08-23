*** Settings ***
Library    BuiltIn

Resource    ../resources/variables/variable_robot.robot
Variables   ../resources/variables/variable_yaml.yaml

*** Test Cases ***
Test Case A
    [Tags]    testing    testa
    Log To Console    Test Case A

Test Case B
    [Tags]    testing    testb
    Log To Console    Test Case B

Test Case C
    Log To Console    Test Case C

# robot -d result ./testcases/04_tags.robot
# robot -d result -i testing -e testb ./testcases/04_tags.robot
# robot -d result -i testa -i testb ./testcases/04_tags.robot