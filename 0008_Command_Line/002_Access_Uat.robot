*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***

UAT_ACCESS

   [Documentation]    Creation of a monthly loan

    # Loan Creation
    Open Browser    https://capc-sg-uat.temenoscloud.com/auth/realms/spotlight_realm/protocol/openid-connect/auth?scope=openid+profile&response_type=code&redirect_uri=https%3A%2F%2Fcapc-sg-uat.temenoscloud.com%2FBrowser%2FLogin&nonce=MTY5NDc3MjgyNDE5MA%3D%3D&client_id=transact    Chrome


    Sleep    3s
    Close All Browsers

*** Keywords ***