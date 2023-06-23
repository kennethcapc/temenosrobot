*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Library    ../helper/general.py
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***


*** Test Cases ***

Create_Corporate_Customer
   [Documentation]    Creation of a Corporate Customer

    # Coperate Customer Creation

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    2s

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Click Element    //*[@id="menu"]/li[1]/ul/li[2]
    Sleep    2s

    Click Element    (//*[contains(text(),"Corporate Customer")])[1]
    Sleep    20s

    ${custID}=    Get Text    //*[@id="C1__QUE_PrimaryKey"]

    ${random}=    Random Name
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--NAME-1--_display"]    ${random}
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--SHORT-NAME--_display"]    ${random}
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--MNEMONIC--"]    ${random}
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--SECTOR--"]    2001
    Click Element    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--INDUSTRY--"]
    Sleep    3s

    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--INDUSTRY--"]    1950
    Sleep    3s

    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--NATIONALITY--"]    SG
    Sleep    3s

    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--CUSTOMER--RESIDENCE--"]    SG
    Sleep    2s

    Input Text    //*[@id="C1__C2__C1__C1__C2__C1__QUE_--CUSTOMER--STREET--_display"]    Happy
    Click Element    //*[@id="C1__C2__C1__C1__C2__C1__QUE_--CUSTOMER--BUILDING-NUMBER--"]
    Sleep    10s

    Click Element    //*[@id="C1__p4_validate_version_button"]
    Sleep    20s

    Click Element    //*[@id='C1__p4_commit_version_button']
    Sleep    20s

    Close Browser

    # Approve Coperate Customer

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    2s

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Click Element    //*[@id="menu"]/li[1]/ul/li[2]
    Sleep    2s

    Click Element    //*[@t24cmd="COS CUSTOMER.NAU"]
    Sleep    10s
    
# 100535

    Click Element    (//*[@title="Authorise"])[2]
    Sleep    20s
    
    Click Element    //*[@id="C1__C2__authorise_version_button"]
    Sleep    20s

*** Keywords ***