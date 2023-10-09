*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***

Full_Approval_Term_Loan

   [Documentation]    Creation of a monthly loan

    # Loan Creation

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

    Input Text    //input[@title='Customer']    100514
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

    Input Text    (//*[@title="Term"])[2]    3M
    Sleep    2s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    Sleep    20s

    # Select From List By Value    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]    Received
    # Sleep    3s

    # Press Keys    None    TAB
    # Press Keys    None    ENTER 
    # Click Element    //*[@id="C1__p4_accept_version_overrides_and_warnings_button"]
    # Sleep    20s

    Close All Browsers

    # Loan Approval

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
    # Log To Console    ${accountID}
    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    1

    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers

Full_Reject_Term_Loan

   [Documentation]    Creation of a monthly loan

    # Loan Creation

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

    Input Text    //input[@title='Customer']    100514
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

    Input Text    (//*[@title="Term"])[2]    3M
    Sleep    2s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    # Sleep    20s

    # Select From List By Value    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]    Received
    # Sleep    3s

    # Press Keys    None    TAB
    # Press Keys    None    ENTER 
    # Click Element    //*[@id="C1__p4_accept_version_overrides_and_warnings_button"]
    Sleep    20s

    Close All Browsers

    # Loan Approval

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
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
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
    # Log To Console    ${accountID}
    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    4

    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    4
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Delete"]
    Sleep    10s
    
    Handle Alert    ACCEPT
    Sleep    15s
    Close All Browsers


Reverse_Approval_Term_Loan

   [Documentation]    Creation of a monthly loan

    # Loan Creation

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

    Input Text    //input[@title='Customer']    100514
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

    Input Text    (//*[@title="Term"])[2]    3M
    Sleep    2s

    Click Element    (//*[@title='Validate'])[1]
    Sleep    20s

    Click Element    (//*[@title="Commit"])[1]
    # Sleep    20s

    # Select From List By Value    //*[@name="C1__WORKINGELEMENTS[1].DISPLAYWARNINGS[1].STATE"]    Received
    # Sleep    3s

    # Press Keys    None    TAB
    # Press Keys    None    ENTER 
    # Click Element    //*[@id="C1__p4_accept_version_overrides_and_warnings_button"]
    Sleep    15s

    Close All Browsers

    # Loan Approval

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
    # Log To Console    ${accountID}


    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    1

    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    Sleep    2s

    Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Authorise"]
    Sleep    20s

    Close All Browsers




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

    Click Element    //*[contains(text(),'Find Loan')]
    Sleep    5s
    
    Wait Until Page Contains Element    //*[contains(text(),'Authorised')]
    Click Element    //*[contains(text(),'Authorised')]
    Sleep    3s

    Input Text    //*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1']    ${arrangementId}
    Sleep    1s

    Click Element    //*[@title='Executes the query']
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]

    # ${accountID}=    Get Text    (//*[@class="tc-default-input tc-rounded-1 tooltipUxp"])[2]

    # Select From List By Value    //*[@id="C1__C2__C1__C2__C1__C5__C1__C1__C1__QUE_90482F6546516C671990584_R1"]    1
    # Sleep    2s
    Click Element    (//*[@title="Reverse"])[1]   
    # Click Element    //*[@title="Launch"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[2] 

    Click Element    //*[@title="Reverse"]
    Sleep    20s

    Close All Browsers


    FireFox Google Log In
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
    
    Wait Until Page Contains Element    //*[contains(text(),'Authorised')]
    Click Element    //*[contains(text(),'Authorised')]
    Sleep    3s

    Input Text    //*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1']    ${arrangementId}
    Sleep    1s

    Click Element    //*[@title='Executes the query']
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]

    ${accountID}=    Get Text    (//*[@class="tc-default-input tc-rounded-1 tooltipUxp"])[2]
    # Log To Console    ${accountID}


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