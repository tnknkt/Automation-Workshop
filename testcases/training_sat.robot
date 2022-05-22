*** Settings ***
Library  SeleniumLibrary

Resource    ${CURDIR}/../keywords/imports.robot


*** Test Cases ***
TC-01 Robot Framework with Structures
    common.Open Amazon Web 
    common.Check popup 
    home_page.Search product by Keywords
    search_page.Log all product lists
    common.Close Browser

# TC-02 Robot Framework without Structures
#     Open Browser    http://www.ebay.com/   gc
#     Maximize Browser Window
#     Input Text      name=_nkw        television
#     Click Element   id=gh-btn
#     @{elementList}=  Get WebElements    //h3[@class='s-item__title']
#         FOR  ${i}  IN  @{elementList}
#         ${text}=  Get Text  ${i}
#         Log to console  ${text}
#     END
#     Close Browser