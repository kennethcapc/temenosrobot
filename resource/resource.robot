*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Library    ../helper/general.py
Documentation    Template robot suite

*** Variables ***
${browser}    Chrome
# ${Borrower}    https://temenosdev.capcfintech.com/Browser/
${Borrower}    https://temenosstg.capcfintech.com/Browser/


*** Keywords ***
Alternative
    Click Element    //*[text()='Try another way']
    Sleep    3s
    Click Element    //*[contains(text(),'Get a verification code from the')]

No Alternative
    Click Element    //*[contains(text(),'Get a verification code from the')]

Google Log In
    # ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    # Call Method     ${options}    add_argument    --disable-notifications
    # ${driver}=    Create Webdriver    Chrome    options=${options}
    # Go To    ${Borrower}
    Open Browser    ${Borrower}    Chrome
    # Open Browser    ${Borrower}    headlessFirefox

    Maximize Browser Window
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

FireFox Google Log In

   Open Browser    ${Borrower}    Firefox
   Maximize Browser Window
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

Safari Google Log In

   Open Browser    ${Borrower}    Safari
   Maximize Browser Window
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
    Log To Console    test44
    Log To Console    ${result}
    ${match}        Get Regexp Matches   ${result.stdout}  kennethc@capc.com.sg: ([\\d]{6})  1
    Log To Console    ${match}[0]
    [Return]        ${match}[0]