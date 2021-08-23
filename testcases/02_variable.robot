*** Settings ***
Library    BuiltIn

*** Variables ***
${name}    panitan
@{services}     acm-pop    acm-por    acm-opfs
&{personal_information}     firstname=libra    lastname=team    age=50
${aaaBBBcccDDD}    aaaBBBcccDDD

*** Test Cases ***
Test Case With Variable In File
    Log To Console    ${\n} ${EMPTY} ${None}
    Log To Console    name: ${name}
    Log To Console    services: @{services}
    Log To Console    personal_information: &{personal_information}
    
    Log To Console    ${aaaBBBcccDDD} - ${aaabbbcccddd} - ${AAABBBCCCDDD} - ${aaa bbb ccc ddd} - ${aaa_bbb_ccc_ddd}

    # deprecated
    Log To Console    services: @{services}[0]

    Log To Console    services example 1: ${services}[1]
    Log To Console    services example 2: ${services[2]}

    # deprecated
    Log To Console    &{personal_information}[age]

    Log To Console    age example 1: ${personal_information['firstname']}
    Log To Console    age example 2: ${personal_information}[lastname]
    Log To Console    age example 3: ${personal_information.age}

# robot -d result -t "Test Case With Variable In File" ./testcases/02_variable.robot

Test Case With Local Variable
    Log To Console    ${\n}Block 1${\n}

    Log To Console    name: ${name}
    ${name}    Set Variable    Libra
    Log To Console    name: ${name}

    Log To Console    ${\n}Block 2${\n}

    @{services}     Create List    acm-pop    acm-por    acm-opfs
    Log To Console    services example 1: ${services}[1]Log To Console    services example 1: ${services}[1]
    Log To Console    services example 2: ${services[2]}Log To Console    services example 2: ${services[2]}

    Log To Console    ${\n}Block 3${\n}

    ${services}     Create List    acm-pop    acm-por    acm-opfs
    Log To Console    services example 1: ${services}[1]Log To Console    services example 1: ${services}[1]
    Log To Console    services example 2: ${services[2]}Log To Console    services example 2: ${services[2]}

    Log To Console    ${\n}Block 4${\n}

    &{personal_information}     Create Dictionary    firstname=libra    lastname=team    age=50
    Log To Console    age example 1: ${personal_information['firstname']}
    Log To Console    age example 2: ${personal_information}[lastname]
    Log To Console    age example 3: ${personal_information.age}

    Log To Console    ${\n}Block 5${\n}

    ${personal_information}     Create Dictionary    firstname=libra    lastname=team    age=50
    Log To Console    age example 1: ${personal_information['firstname']}
    Log To Console    age example 2: ${personal_information}[lastname]
    Log To Console    age example 3: ${personal_information.age}

# robot -d result -t "Test Case With Local Variable" ./testcases/02_variable.robot