*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Log all product lists
    @{elementList}=  Get WebElements    //span[@class="a-size-medium a-color-base a-text-normal"]
        FOR  ${i}  IN  @{elementList}
        ${text}=  Get Text  ${i}
        Log to console  ${text}
    END
