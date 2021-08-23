*** Settings ***
Library    BuiltIn
Library    SSHLibrary

*** Test Cases ***
Test SSH
    Open Connection     10.161.199.202
    Login               acm-rd-service.sftp-internal        wUyL4ATmdrqBk6s4
    Close Connection
