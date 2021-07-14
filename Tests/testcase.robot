*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/hbcLocators.robot
Resource    ../Resources/common.robot
#robot -d Result -i sanity Tests

*** Test Cases ***
Open hbc Application
    [Tags]    sanity
    User is allowed to launch hbc app
    Verify hbc home page
    Log Source