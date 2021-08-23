*** Settings ***
Library    BuiltIn

Resource    ../resources/variables/variable_robot.robot
Variables   ../resources/variables/variable_yaml.yaml

*** Test Cases ***
Test Case With Variable
    Log To Console    test_variable_yaml: ${test_variable_yaml}
    Log To Console    test_variable_robot: ${test_variable_robot}

# robot -d result ./testcases/03_variable_from_file.robot