*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***

Experiment_Test

   [Documentation]    Creation of a monthly loan

    # Loan Creation

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input
    


    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s


    Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    2s
    Wait Until Page Contains Element    //*[contains(text(),'User Menu')]

    Click Element    //*[contains(text(),'User Menu')]
    Sleep    0.5s

    Click Element    //*[@t24cmd='COS T24.PRODUCT.CATALOG']
    Sleep    0.5s

    Wait Until Page Contains Element    (//*[@class="expandedSubGroupWithMultipleRows"])[2]
    Input Text    //input[@type='search']    CapC Small
    Sleep    0.5s
    
    Click Element    //*[@class="EnquiryTopLinksControl tc-normal-icon icon-arrow-forward"]
    Sleep    0.5s
    
    Wait Until Page Contains Element    (//*[@class="EnquiryTopLinksControl tc-normal-icon icon-new"])[4]
    Click Element    (//*[@class="EnquiryTopLinksControl tc-normal-icon icon-new"])[4]
    Sleep    3s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]
    # Wait Until Page Contains Element    //input[@title='Customer']

    Wait Until Page Contains Element    //input[@title='Customer']
    Input Text    //input[@title='Customer']    100522
    Sleep    0.5s

    Input Text    //*[@assocappname='CURRENCY']    SGD
    Sleep    0.5s

    Click Element    (//*[@title='Validate'])[2]
    # Sleep    10s
    Wait Until Page Contains Element    //*[contains(text(),'Commitment')]
    ${arrangementId}=    Get Text    (//*[@title='Arrangement'])[2]

    Click Element    //*[contains(text(),'Commitment')]
    # Sleep    0.5s
    Wait Until Page Contains Element    (//*[@title="Amount"])[2]
    Input Text    (//*[@title="Amount"])[2]    10T
    Sleep    0.5s

    Input Text    (//*[@title="Term"])[2]    84M
    Sleep    0.5s

    Click Element    (//*[@title='Validate'])[1]
    # Sleep    20s
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="fixedPopUpInfodiv fixedPopUpInfodivPosition errorShadow tc-popup show-popup tc-popup-sticky acceptOverridesDialog ui-draggable"]

    Click Element    (//*[@title="Commit"])[1]
    # Sleep    20s
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]
    Select From List By Value    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]    Received
    Sleep    0.5s
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@id="C1__accept_version_warnings_button"]
    # Press Keys    None    SHIFT+TAB    SHIFT+TAB
    # Press Keys    None    ENTER
    
    
    Click Element    //*[@id="C1__accept_version_overrides_and_warnings_button"]/span
    # Sleep    20s
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains    Txn Complete:
    Log To Console    ${arrangementId}
    Close All Browsers


    Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    Wait Until Page Contains Element    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]
    Input Text    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]    COS AA.FIND.ARRANGEMENT.AL
    # Press Keys    None    TAB
    Press Keys    None    ENTER
    # Sleep    5s    
    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]

    # Wait Until Page Contains Element     //*[contains(text(),'User Menu')]


    # Click Element    //*[contains(text(),'User Menu')]
    # Sleep    3s

    # Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    # Sleep    3s

    # Click Element    (//*[contains(text(),'Retail Operations')])[1]
    # Sleep    3s

    # Click Element    //*[contains(text(),'Find Loan')]
    # Sleep    5s
    Wait Until Page Contains    Unauthorised
    # Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
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

    Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers


    # Google Log In

    # Input Text    //*[@id='userId']    CapCLMC01
    # Click Element    //*[@id='Logon']/p[3]/input

    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    
    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Wait Until Page Contains Element     //*[contains(text(),'User Menu')]

    # Click Element    //*[contains(text(),'User Menu')]
    # Sleep    3s

    # Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    # Sleep    3s

    # Click Element    (//*[contains(text(),'Retail Operations')])[1]
    # Sleep    3s

    # Click Element    (//*[contains(text(),"Funds Transfer")])[1]
    # Sleep    2s

    # Click Element    //*[@t24cmd="FUNDS.TRANSFER,AA.ACDI I F3"]
    # Sleep    10s
    
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-ACCT-NO--"]    ${arrangementId}
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-CURRENCY--"]    SGD
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--DEBIT-AMOUNT--"]    10T
    # Input Text    //*[@id="C1__C2__C1__C1__C1__QUE_--FUNDS-TRANSFER--CREDIT-ACCT-NO--"]    SGD100010001
    # Sleep    5s

    # Click Element    (//*[@title='Validate'])[1]
    # Sleep    20s

    # Click Element    (//*[@title="Commit"])[1]
    # Sleep    20s
    # Log To Console    It is here
    # Click Element    //*[@title="Accept"]

    # Sleep    2s
    # Sleep    20s

    # Close All Browsers


    # Firefox Google Log In

    # Input Text    //*[@id='userId']    CapCLMC02
    # Click Element    //*[@id='Logon']/p[3]/input

    # Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Sleep    5s
    
    # Click Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    # Wait Until Page Contains Element     //*[contains(text(),'User Menu')]

    # Click Element    //*[contains(text(),'User Menu')]
    # Sleep    3s

    # Wait Until Page Contains Element     //*[contains(text(),'Retail Operations')]
    # Sleep    3s

    # Click Element    (//*[contains(text(),'Retail Operations')])[1]
    # Sleep    3s

    # Click Element    //*[contains(text(),'Find Loan')]
    # Sleep    5s

    # Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
    # Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    ${arrangementId}
    # Sleep    1s

    # Click Element    (//*[@title='Executes the query'])[1]
    # Sleep    5s

    # Click Element    //*[@title="Overview"]
    # Sleep    20s

    # ${handles}    Get Window Handles
    # Switch Window    ${handles}[1]    



    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C6__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    # Sleep    2s

    # Click Element    //*[@title="Launch"]
    # Sleep    20s

    # ${handles}    Get Window Handles
    # Switch Window    ${handles}[2] 

    # Click Element    //*[@title="Authorise"]
    # Sleep    20s

    Close All Browsers

*** Keywords ***