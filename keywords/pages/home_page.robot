*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_text}=   id=twotabsearchtextbox
${search_btn}=   id=nav-search-submit-button
${product_list}=    Speaker
${url}=         https://www.amazon.com/
${browser}=     gc

*** Keywords ***
Search product by Keywords
    # [Arguments]     ${locator}      ${keyword}
    SeleniumLibrary.Input Text      ${input_text}     ${product_list}
    SeleniumLibrary.Click Element   ${search_btn}

