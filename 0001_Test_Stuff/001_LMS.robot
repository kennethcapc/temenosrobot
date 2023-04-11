*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Documentation    Template robot suite

*** Variables ***
${browser}    Chrome
${Borrower}    https://temenosdev.capcfintech.com/Browser/
# ${Borrower}    https://ccpxpl.outsystemsenterprise.com/EWA/Login

*** Test Cases ***

Create Floor Stock Lead
   [Documentation]    Borrower Email Verfication Not Clicked, Status Should Remain Unverified
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go To    ${Borrower}
#    Open Browser    ${Borrower}    Chrome
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

    Sleep    5s
    ${element_count}=    Get Element Count    //*[text()='Try another way']
    # ${counting}    Set Variable    ${0}
    # FOR    ${element}    IN    @{element_count}
    #     ${counting}=    Evaluate    ${counting} + 1
    # END
    ${element_count2}=    Get Element Count    //*[contains(text(),'Get a verification code from the')]
    # ${counting2}    Set Variable    ${0}
    # FOR    ${element}    IN    @{element_count2}
    #     ${counting2}=    Evaluate    ${counting2} + 1
    # END
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
    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input
    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]

    Sleep    5s
    Log To Console    here
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Log To Console    There
    Sleep    2s
    # Click Element    //*[@id='menu']/li[1]/a/span[1]
    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s
    # Click Element    //*[@id='menu']/li[1]/ul/li[7]/a/span[1]
    Click Element    //*[@t24cmd='COS T24.PRODUCT.CATALOG']

    Sleep    2s
    # Input Text    //*[@id='C1__C2__C1__C1__C1__C2__C1__TBL_6F987F5BCFFC6FEB404693_filter']/label/input    Personal
    Input Text    //input[@type='search']    Personal

    Sleep    2s
    
    # Click Element    //*[@id="C1__C2__C1__C1__C1__C2__C1__QUE_6F987F5BCFFC6FEB404705_R4"]
    Click Element    //*[@class="EnquiryTopLinksControl tc-normal-icon icon-arrow-forward"]
    Sleep    3s
    
    # Click Element    //*[@id='C1__C2__C1__C2__C1__C2__C1__QUE_6F987F5BCFFC6FEB410630_R3_drilldown']/a[2]
    Click Element    (//*[contains(text(),'Simulate')])[4]
    Sleep    10s
    ${handles}    Get Window Handles
    # Log To Console    ${handles}[1]
    # Log To Console    ${handles}[0]
    Switch Window    ${handles}[1]

    # ${currenttitle}    Get Title
    # Log To Console    ${currenttitle}

    # Sleep    5s
    # Capture Page Screenshot     OpsAddPartner006.png
    # Wait Until Page Contains Element    //*[@id="2:1439;a"]/div/div/a

    # Input Text    //*[@id='C1__C2__C1__C1__C1__QUE_--AA-SIMULATION-CAPTURE--CUSTOMER--_R1']    999999
    Input Text    //*[@title='Customer']    999999

    Sleep    2s

    # Input Text    //*[@id='C1__C2__C1__C1__C1__QUE_--AA-SIMULATION-CAPTURE--CURRENCY--']    SGD
    Input Text    //*[@assocappname='CURRENCY']    SGD
    Sleep    1s

    # Click Element    //*[@id='C1__aa_populate_version_button']
    Click Element    (//*[@title='Validate'])[2]
    Sleep    10s

    # Click Element    //*[@id='C1__C3__C1__C1__FMT_F4B5BC569818178F11861799_R2_heading']/span[1]
    Click Element    //*[contains(text(),'Account Officers')]

    Sleep    2s
    # Input Text    //*[@id='C1__C3__C1__C1__C2__C1__C1__C1__QUE_--AA-SIM-OFFICERS--PRIMARY-OFFICER--']    2
    Input Text    //*[@name='C1__C3__C1__C1__C2__C1__C1__C1__VERAASIMOFFICERS_AAROLE[1].PRIMARYOFFICER']    2
    Sleep    1s

    #  Click Element    //*[@id='C1__C3__C1__C1__FMT_F4B5BC569818178F11861799_R5_heading']/span[1]
    Click Element    //*[contains(text(),'Commitment')]
    Sleep    2s
    Input Text    //*[@name='C1__C3__C1__C1__C5__C1__C1__C1__VERAASIMTERMAMOUNT_AASIMPLEAL[1].AMOUNT']    100000
    # Input Text    //*[@id='C1__C3__C1__C1__C5__C1__C1__C1__QUE_--AA-SIM-TERM-AMOUNT--AMOUNT--']    100000
    Sleep    1s
    
    Input Text    //*[@name='C1__C3__C1__C1__C5__C1__C1__C1__VERAASIMTERMAMOUNT_AASIMPLEAL[1].TERM']    84M
   
    # Input Text    //*[@id='C1__C3__C1__C1__C5__C1__C1__C1__QUE_--AA-SIM-TERM-AMOUNT--TERM--']    84M
    Sleep    1s 
    
    # Click Element    //*[@id='C1__C3__C1__C1__FMT_F4B5BC569818178F11861799_R14_heading']/span[1]
    Click Element    //*[contains(text(),'Settlement Instructions')]
    Sleep    2s

    Click Element    (//*[@id='C1__C3__C1__C1__C14__C1__C1__C1__FS_QUE_--AA-SIM-SETTLEMENT--PAYIN-SETTLEMENT--_R1']/div[1]/label)[1]
    # Click Element    (//*[@name='C1__C3__C1__C1__C14__C1__C1__C1__VERAASIMSETTLEMENT_AABASICSAL[1].VERAASIMSETTLEMENT_AABASICSAL_PAYINCURRENCYMVGROUP[1].ELEMENT[1].PAYINSETTLEMENT']/div[1]/label)[1]
    Sleep    1s
    Click Element    (//*[@id='C1__C3__C1__C1__C14__C1__C1__C1__FS_QUE_--AA-SIM-SETTLEMENT--PAYOUT-SETTLEMENT--_R1']/div[1]/label)[1]
    # Click Element    (//*[@name=C1__C3__C1__C1__C14__C1__C1__C1__VERAASIMSETTLEMENT_AABASICSAL[1].VERAASIMSETTLEMENT_AABASICSAL_PAYOUTCURRENCYMVGROUP[1].ELEMENT[1].PAYOUTSETTLEMENT']/div[1]/label)[1]
    Sleep    1s
    # Input Text    //*[@id='C1__C3__C1__C1__C14__C1__C1__C1__QUE_--AA-SIM-SETTLEMENT--PAYIN-ACCOUNT--_R1_1']    SGD100010001
    Input Text    (//*[@title='Settlement A/c'])[1]    SGD100010001
    Sleep    1s
    Input Text    (//*[@title='Settlement A/c'])[2]    SGD100010001

    # Input Text    //*[@id='C1__C3__C1__C1__C14__C1__C1__C1__QUE_--AA-SIM-SETTLEMENT--PAYOUT-ACCOUNT--_R1_1']    SGD100010001
    Sleep    5s    


    # Click Element    //*[@id='C1__validate_version_button']
    Click Element    (//*[@title='Validate'])[1]

    Sleep    40s



    
*** Keywords ***
Alternative
    Click Element    //*[text()='Try another way']
    Sleep    3s
    Click Element    //*[contains(text(),'Get a verification code from the')]

No Alternative
    Click Element    //*[contains(text(),'Get a verification code from the')]


Get Authenticator Code
    [Documentation]  Authenticator needs to be set up for Google account
    [Arguments]     ${passphrase}
    Log To Console    ${passphrase}
    ${result}=      Run Process     echo ${passphrase} | authenticator --data /Users/kennethc@capc.com.sg/Tem/ generate --refresh once   shell=TRUE
    # ${result}=    Run Process    echo abc
    Log To Console    test44
    Log To Console    ${result}
    ${match}        Get Regexp Matches   ${result.stdout}  kennethc@capc.com.sg: ([\\d]{6})  1
    Log To Console    ${match}[0]
    [Return]        ${match}[0]
   