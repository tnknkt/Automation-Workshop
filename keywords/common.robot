*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Check popup
    ${passed}  Run Keyword And Return Status     Wait Until Element is visible   //div[@class='a-section glow-toaster glow-toaster-theme-default glow-toaster-slot-default nav-coreFlyout nav-flyout']  #เก็บไว้ในตัวแปร passed
    IF  ${passed}    
        Click Element   xpath=//input[@class="a-button-input" and @data-action-type='DISMISS']
    END

Open Amazon Web
    # [Arguments]                     ${url}      ${browser}
    SeleniumLibrary.Open Browser    ${url}      ${browser}

Close Browser
    SeleniumLibrary.Close Browser