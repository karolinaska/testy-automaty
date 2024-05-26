*** Settings ***
Resource    ../locators/common.robot
Resource    ../locators/home_page.robot
Resource    common.robot


*** Keywords ***
Wpisz Cos Tam
    [Arguments]    ${search_text}
    Input Text    ${search_input}    ${search_text}

Kliknij Wyszukaj
    Click Button    ${seach_button}
