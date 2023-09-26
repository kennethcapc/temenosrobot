*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***


FT_To_GL

   [Documentation]    Creation of a monthly loan

    # Loan Creation

    
    #Repayment Cash

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Input Text    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]    FT

    Press Keys    None    ENTER

    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@id="C1__BUT_59666E37CA98156F22153"]/span
    Sleep   1s
    Click Element    //*[@class="tc-card-header-icon buttonClassSwitcher icon-new"]
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="tc-form-control tc-fs-p1 tc-card-title tc-bordered-readonly noSwipe primaryKeyEnrich tc-default-input tc-rounded-1"]
    ${FT}=    Get Text    //*[@class="tc-form-control tc-fs-p1 tc-card-title tc-bordered-readonly noSwipe primaryKeyEnrich tc-default-input tc-rounded-1"]
    Log To Console    FT Number
    Log To Console    ${FT}

    ${FTA}=    Catenate    FT A    ${FT}
    Log To Console    ${FTA}
    Sleep    5s
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].TRANSACTIONTYPE"]    AC
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].DEBITACCTNO"]    1000010557
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].DEBITCURRENCY"]    SGD
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].DEBITAMOUNT"]    0.05
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].DEBITTHEIRREF"]    1000010557T
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].CREDITTHEIRREF"]    1000010557T
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].CREDITACCTNO"]    SGD100110001
    Input Text    //*[@name="C1__C2__C1__C1__C1__VERFUNDSTRANSFER[1].CREDITCURRENCY"]    SGD
    Sleep    0.5s

    Click Element    //*[@id="C1__p4_validate_version_button"]
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="fixedPopUpInfodiv fixedPopUpInfodivPosition errorShadow tc-popup show-popup tc-popup-sticky acceptOverridesDialog ui-draggable"]

    Click Element    //*[@id="C1__p4_commit_version_button"]
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains    Txn Complete:

    Close All Browsers



    Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Input Text    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]    ${FTA}

    Press Keys    None    ENTER

    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@id="C1__p4_authorise_version_button"]
    Click Element    //*[@id="C1__p4_authorise_version_button"]
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains    Txn Complete:

    Close All Browsers    





*** Keywords ***

# 1000009446