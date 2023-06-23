*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Library    ../helper/general.py
Documentation    Template robot suite

*** Variables ***
${browser}    Chrome
${Borrower}    https://temenosdev.capcfintech.com/Browser/
# ${Borrower}    https://ccpxpl.outsystemsenterprise.com/EWA/Login

*** Test Cases ***

Create_Corperate_Customer
   [Documentation]    Borrower Email Verfication Not Clicked, Status Should Remain Unverified
    # Coperate Customer Creation

    Google Log In
    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input
    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]

    Sleep    5s
    Log To Console    here
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Log To Console    There
    Sleep    2s

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s
    Click Element    //*[@id="menu"]/li[1]/ul/li[2]
    Sleep    2s
    Click Element    (//*[contains(text(),"Corporate Customer")])[1]
    Sleep    20s
    ${custID}=    Get Text    //*[@id="C1__QUE_PrimaryKey"]
    Log To Console    ${custID}
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
    Log To Console    here
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Log To Console    There
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
Alternative
    Click Element    //*[text()='Try another way']
    Sleep    3s
    Click Element    //*[contains(text(),'Get a verification code from the')]

No Alternative
    Click Element    //*[contains(text(),'Get a verification code from the')]

Google Log In
        ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go To    ${Borrower}

   Sleep    2s
   Click Element    //*[@id='idp1']/div[1]
    Wait Until Page Contains Element   //*[@id="identifierId"]
    Sleep    2s
    Input Text    //*[@id ="identifierId"]    kennethc@capc.com.sg
    Click Element    //*[@id="identifierNext"]/div/button/span
    Sleep    2s

    Capture Page Screenshot     OpsAddPartner004.png
    Wait Until Page Contains Element    //*[@id="password"]/div[1]/div/div[1]/input
    Sleep    2s
    Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Y2kuniontpjcred!
    
    Click Element    //*[@id="passwordNext"]/div/button/span
    Capture Page Screenshot    CapOpButtonLogin1.png

    Sleep    10s
    ${element_count}=    Get Element Count    //*[text()='Try another way']
   
    ${element_count2}=    Get Element Count    //*[contains(text(),'Get a verification code from the')]

    Log To Console    countings
    Log To Console    ${element_count}
    Log To Console    ${element_count2}
    IF    ${element_count2} > 0
        No Alternative
    ELSE
        Alternative
    END
    Sleep    3s
    ${code}    Get Authenticator Code   kenneth
    Input Text    //input[@type="tel"]  ${code}
    Sleep    2s
    Click Element    //*[@id="totpNext"]/div/button/span
    Sleep    20s

Get Authenticator Code
    [Documentation]  Authenticator needs to be set up for Google account
    [Arguments]     ${passphrase}
    Log To Console    ${passphrase}
    ${result}=      Run Process     echo ${passphrase} | authenticator --data /Users/kennethc@capc.com.sg/temenosrobot/ generate --refresh once   shell=TRUE
    # ${result}=    Run Process    echo abc
    Log To Console    test44
    Log To Console    ${result}
    ${match}        Get Regexp Matches   ${result.stdout}  kennethc@capc.com.sg: ([\\d]{6})  1
    Log To Console    ${match}[0]
    [Return]        ${match}[0]
   