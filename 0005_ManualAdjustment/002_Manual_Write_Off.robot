*** Settings ***

Library    SeleniumLibrary
Library    Process
Library    String
Resource    ../resource/resource.robot
Documentation    Template robot suite

*** Variables ***

*** Test Cases ***


Manual_Write_Off

   [Documentation]    Creation of a monthly loan

    # Loan Creation

    
    #Repayment Cash

    Google Log In

    Input Text    //*[@id='userId']    CapCLMC01
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Input Text    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]    COS AA.FIND.ARRANGEMENT.AL

    Press Keys    None    ENTER

    Sleep    4s
    Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
    Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    1000010525
    Sleep    1s   
    Click Element    (//*[@title='Executes the query'])[1]
    Sleep    5s

    Click Element    //*[@title="Overview"]
    Sleep    4s
    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]        
    
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@script-id="AAOVERVIEWHEADINGLIV_DRILLDOWN_R1_1"]

    Sleep    0.5s
    Click Element    //*[@script-id="AAOVERVIEWHEADINGLIV_DRILLDOWN_R1_1"]
    Sleep    20s
    ${handles}    Get Window Handles
    Log To Console    ${handles}[2]  
    Switch Window    ${handles}[2]    
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@script-id="AADETAILSNEWACTIVITIES_DRILLDOWN_R53_1"]
    Sleep    1s
    Click Element   //*[@script-id="AADETAILSNEWACTIVITIES_DRILLDOWN_R53_1"]
    Sleep    1s
    # ${handles}    Get Window Handles
    # Log To Console    ${handles}[3]  
    # Switch Window    ${handles}[3]    
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="C1__C3__C1__C1__heading ui-accordion-header ui-accordion-icons"]
    Click Element    //*[@id="C1__C3__C1__C1__FMT_F4B5BC569818178F11861799_R1_heading"]/span[2]

    
    Sleep   5s
    Input Text    //*[@name="C1__C3__C1__C1__C1__C1__C1__C1__VERAAARRBALANCEMAINTENANCE_AABILLS[1].VERAAARRBALANCEMAINTENANCE_AABILLS_BILLREFMVGROUP[1].ELEMENT[1].WRITEOFFBILL"]    YES
    Input Text    //*[@name="C1__C3__C1__C1__C1__C1__C1__C1__VERAAARRBALANCEMAINTENANCE_AABILLS[1].VERAAARRBALANCEMAINTENANCE_AABILLS_BILLREFMVGROUP[1].ELEMENT[1].BILLADJNARR"]    test
    # Input Text    //*[@name="C1__C3__C1__C1__C1__C1__C1__C1__VERAAARRBALANCEMAINTENANCE_AABILLS[1].VERAAARRBALANCEMAINTENANCE_AABILLS_BILLREFMVGROUP[1].ELEMENT[1].VERAAARRBALANCEMAINTENANCE_AABILLS_PROPERTYSVGROUP[1].ELEMENT[1].NEWPROPAMT"]    -1000
    Sleep    5s
    Click Element   (//*[@id="C1__validate_version_button"])[1]
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@class="fixedPopUpInfodiv fixedPopUpInfodivPosition errorShadow tc-popup show-popup tc-popup-sticky acceptOverridesDialog ui-draggable"]
    Sleep    1s
    Click Element   //*[@id="C1__p4_commit_version_button"]    
    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains    Txn Complete:

    Close All Browsers

    Firefox Google Log In

    Input Text    //*[@id='userId']    CapCLMC02
    Click Element    //*[@id='Logon']/p[3]/input

    Wait Until Page Contains Element    //*[@class="tc-menu-trigger tc-header-icon icon-menu1 buttonClassSwitcher"]
    Sleep    5s

    Input Text    //*[@name="WORKINGELEMENTS[1].NAVIGATION[1].COMMANDLINE"]    COS AA.FIND.ARRANGEMENT.AL

    Press Keys    None    ENTER

    Sleep    4s
    Wait Until Page Contains Element    //*[contains(text(),'Unauthorised')]
    Input Text    (//*[@name='C1__C1__C1__C1__C1__ENQAAFINDARRANGEMENTAL[1].SEARCHREQUEST[1].FILTERS[1].ARRANGEMENTID[1].OPERAND1'])[1]    1000010525
    Sleep    1s   
    Click Element    (//*[@title='Executes the query'])[1]
    Sleep    5s
    Click Element    //*[@title="Overview"]
    Sleep    20s

    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]

    Wait Until Keyword Succeeds    30s    5s    Wait Until Page Contains Element    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]
    Select From List By Value    //*[@script-id="AADETAILSACTIVITYLOGPENDINGFIN_DRILLDOWN_R1"]    4
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




*** Keywords ***

# 1000009446