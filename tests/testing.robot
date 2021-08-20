*** Settings ***

Library            SeleniumLibrary
Suite Setup        Open Browser             ${URL}    ${BROWSER}
Suite Teardown     Close All Browsers


*** Variables ***
${URL}             http://www.google.com
${BROWSER}         Chrome
${search_form}     css=form[role=search]
${search_query}    css=input[name=q]
${search_term}     Lambdatest

*** Test Cases ***

Google Search
    Wait Until Element Is Visible    ${search_form}
    Wait Until Element Is Visible    ${search_query}
    Input Text                       ${search_query}    ${EMPTY}
    Input Text                       ${search_query}    ${search_term}
    Submit form
    
    
    
    
    
    


