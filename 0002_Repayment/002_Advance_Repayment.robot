*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***

Advance_Repayment_No_Excess

   [Documentation]    Creation of a monthly loan

    # Loan Creation

    
    #Repayment Cash

    Google Log In

    # Input Text    //*[@id='userId']    CapCLMC01
    # Click Element    //*[@id='Logon']/p[3]/input
    Input Text    //*[@id="username"]    KENNETH1
    Input Text    //*[@id="password"]    123456


    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    Wait Until Page Contains Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Click Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

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

    Click Element    //*[@t24cmd="FUNDS.TRANSFER,AA.ACAR I F3"]
    Sleep    10s
    
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-ACCT-NO--"]    SGD100010001
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-CURRENCY--"]    SGD
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-AMOUNT--"]    1
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-ACCT-NO--"]    1000002964
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-VALUE-DATE--"]    23 JUN 2023
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-VALUE-DATE--"]    23 JUN 2023
    Sleep    5s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    Sleep    10s
    Log To Console    It is here
    Click Element    //*[@title="Accept"]
    # Click Element    //*[@id="C1__accept_version_warnings_button"]
    # ${ele}    Get WebElement   //*[@id="C1__accept_version_warnings_button"]
    # Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    # Press Keys    None    TAB
    # Press Keys    None    TAB
    # Press Keys    None    ENTER 
    Sleep    2s
    Sleep    20s

    Close All Browsers

    # Approval of Disbursement

    Google Log In

    # Input Text    //*[@id='userId']    CapCLMC01
    # Click Element    //*[@id='Logon']/p[3]/input
    Input Text    //*[@id="username"]    KENNETH2
    Input Text    //*[@id="password"]    123456


    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    Wait Until Page Contains Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Click Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

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
    Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    1000002964
    Sleep    1s

    Click Element    (//*[@title='Executes the query'])[1]
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]    


    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    1

    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C6__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers



Advance_Repayment_Excess

   [Documentation]    Creation of a monthly loan

    # Loan Creation

    
    #Repayment Cash

    Google Log In

    # Input Text    //*[@id='userId']    CapCLMC01
    # Click Element    //*[@id='Logon']/p[3]/input
    Input Text    //*[@id="username"]    KENNETH1
    Input Text    //*[@id="password"]    123456


    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    Wait Until Page Contains Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Click Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

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

    Click Element    //*[@t24cmd="FUNDS.TRANSFER,AA.ACAR I F3"]
    Sleep    10s
    
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-ACCT-NO--"]    SGD100010001
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-CURRENCY--"]    SGD
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-AMOUNT--"]    50T
    Sleep    1s
    Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-ACCT-NO--"]    1000002956
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-VALUE-DATE--"]    23 JUN 2023
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-VALUE-DATE--"]    23 JUN 2023
    Sleep    5s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    Sleep    10s
    Log To Console    It is here
    # Click Element    //*[@title="Accept"]
    # Click Element    //*[@id="C1__accept_version_warnings_button"]
    # ${ele}    Get WebElement   //*[@id="C1__accept_version_warnings_button"]
    # Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    # Press Keys    None    TAB
    # Press Keys    None    TAB
    # Press Keys    None    ENTER 
    # Sleep    2s
    # Sleep    20s

    Close All Browsers

    # Approval of Disbursement

    Google Log In

    # Input Text    //*[@id='userId']    CapCLMC01
    # Click Element    //*[@id='Logon']/p[3]/input
    Input Text    //*[@id="username"]    KENNETH2
    Input Text    //*[@id="password"]    123456


    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    Wait Until Page Contains Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Click Element    //*[@class="pf-c-button pf-m-primary pf-m-block btn-lg"]

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
    Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    1000002956
    Sleep    1s

    Click Element    (//*[@title='Executes the query'])[1]
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]    

    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    1


    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C6__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers
*** Keywords ***

# 1000009446

# 1000009454