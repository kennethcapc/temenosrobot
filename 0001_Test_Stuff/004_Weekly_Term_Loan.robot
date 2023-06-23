*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***
*** Test Cases ***

Create_Weekly_Term_Loan
   [Documentation]    Borrower Email Verfication Not Clicked, Status Should Remain Unverified

    # Loan Creation

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input
    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]

    Sleep    5s

    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    2s

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Click Element    //*[@t24cmd='COS T24.PRODUCT.CATALOG']
    Sleep    3s

    Wait Until Page Contains Element    (//*[@class="expandedSubGroupWithMultipleRows"])[2]
    Input Text    //input[@type='search']    CapC Small
    Sleep    2s
    
    Click Element    //*[@class="EnquiryTopLinksControl tc-normal-icon icon-arrow-forward"]
    Sleep    3s
    
    Click Element    (//*[@class="EnquiryTopLinksControl tc-normal-icon icon-new"])[4]
    Sleep    10s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]

    Input Text    //input[@title='Customer']    100522
    Sleep    2s

    Input Text    //*[@assocappname='CURRENCY']    SGD
    Sleep    1s

    Click Element    (//*[@title='Validate'])[2]
    Sleep    10s

    ${arrangementId}=    Get Text    (//*[@title='Arrangement'])[2]
    # Log To Console    ${arrangementId}

    Click Element    //*[contains(text(),'Commitment')]
    Sleep    2s

    Input Text    (//*[@title="Amount"])[2]    10T
    Sleep    1s

    Input Text    (//*[@title="Term"])[2]    20W
    Sleep    2s

    Click Element    //*[contains(text(),'Interest Calculation')]
    Sleep    2s

    Click Element    //*[contains(text(),"Principal Interest")]
    Sleep    2s

    Input Text    //*[@id="C1__C3__C1__C1__C4__C1__C1__C1__C1__C1__QUE_--AA-ARR-INTEREST--FIXED-RATE--_R1"]    104.00
    Sleep    2s

    ${ele}    Get WebElement   //*[@id="C1__C3__C1__C1__C4__C1__C1__C1__C1__TAB_-REPEAT-WITHIN-TABS_anchor_R4"]
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele} 
    Sleep    2s

    Input Text    //*[@id="C1__C3__C1__C1__C4__C1__C1__C1__C1__C4__QUE_--AA-ARR-INTEREST--DAY-BASIS--"]    G
    Click Element    //*[@id="C1__C3__C1__C1__C4__C1__C1__C1__C1__C4__p4_QUE_--AA-ARR-INTEREST--COMPOUND-TYPE--"]
    Sleep    5s

    Click Element    //*[contains(text(),"Penalty Interest")]
    Sleep    2s

    Input Text    //*[@id="C1__C3__C1__C1__C4__C2__C1__C1__C1__C1__QUE_--AA-ARR-INTEREST--FIXED-RATE--_R1"]    104.00
    Sleep    2s

    ${ele}    Get WebElement   //*[@id="C1__C3__C1__C1__C4__C2__C1__C1__C1__TAB_-REPEAT-WITHIN-TABS_anchor_R4"]
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele} 
    Sleep    2s

    Input Text    //*[@id="C1__C3__C1__C1__C4__C2__C1__C1__C1__C4__QUE_--AA-ARR-INTEREST--DAY-BASIS--"]    G
    Click Element    //*[@id="C1__C3__C1__C1__C4__C2__C1__C1__C1__C4__p4_QUE_--AA-ARR-INTEREST--COMPOUND-TYPE--"]
    Sleep    5s

    Click Element    (//*[@class="C1__C3__C1__C1__heading ui-accordion-header ui-accordion-icons"])[4]
    Sleep    3s
   
    Click Element    //*[@id="FREQ_C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R1"]
    Sleep    2s

    Click Element    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R1:frequency:W"]
    Input Text    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R1:W:weeks"]    1
    Sleep    2s

    Click Element    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R1:saveRecurrance"]
    Sleep    5s

    Click Element    //*[@id="FREQ_C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R2"]
    Sleep    2s

    Click Element    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R2:frequency:W"]
    Input Text    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R2:W:weeks"]    1
    Sleep    2s

    Click Element    //*[@id="C1__C3__C1__C1__C6__C1__C1__C1__C1__QUE_--AA-ARR-PAYMENT-SCHEDULE--PAYMENT-FREQ--_R2:saveRecurrance"]
    Sleep    5s
    Sleep    10s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    15s
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    Sleep    20s

    Select From List By Value    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]    Received
    Sleep    1s

    Click Element    //*[@id="C1__p4_accept_version_overrides_and_warnings_button"]
    Sleep    20s

    # Loan Approval

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s
    
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Wait Until Page Contains Element     //*[contains(text(),'User Menu')]

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    Sleep    3s

    Click Element    (//*[contains(text(),'Retail Operations')])[1]
    Sleep    3s

    Click Element    //*[contains(text(),'Find Loan')]
    Sleep    5s

    Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
    Click Element    //*[contains(text(),'Unauthorised')]
    Sleep    3s

    Input Text    (//*[@name='C1__C1__C1__C2__C1__ENQAAFINDARRANGEMENTNAUAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    ${arrangementId}
    Sleep    1s

    Click Element    (//*[@title='Executes the query'])[2]
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]    

    ${accountID}=    Get Text    (//*[@class="tc-default-input tc-rounded-1 tooltipUxp"])[2]

    Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_A304093E2380EFE84096710_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers

    #Disburse Cash

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s
    
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Wait Until Page Contains Element     //*[contains(text(),'User Menu')]

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    Sleep    3s

    Click Element    (//*[contains(text(),'Retail Operations')])[1]
    Sleep    3s

    Click Element    (//*[contains(text(),"Funds Transfer")])[1]
    Sleep    2s

    Click Element    //*[@t24cmd="FUNDS.TRANSFER,AA.ACDI I F3"]
    Sleep    10s
    
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-ACCT-NO--"]    ${arrangementId}
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-CURRENCY--"]    SGD
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-AMOUNT--"]    10T
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-ACCT-NO--"]    SGD100010001
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-VALUE-DATE--"]    23 JUN 2023
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-VALUE-DATE--"]    23 JUN 2023
    Sleep    5s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    Sleep    20s

    Click Element    //*[@title="Accept"]
    Sleep    20s

    # Approval of Disbursement

    FireFox Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s
    
    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Wait Until Page Contains Element     //*[contains(text(),'User Menu')]

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    3s

    Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    Sleep    3s

    Click Element    (//*[contains(text(),'Retail Operations')])[1]
    Sleep    3s

    Click Element    //*[contains(text(),'Find Loan')]
    Sleep    5s

    Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
    Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    ${arrangementId}
    Sleep    1s

    Click Element    (//*[@title='Executes the query'])[1]
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]    

    Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C6__C1__C1__C1__QUE_A304093E2380EFE84096710_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers

*** Keywords ***