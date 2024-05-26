*** Settings ***
Library     String
Resource    ../configs/settings.robot
Resource    ../configs/browser.robot
Resource    ../locators/common.robot
Library     SeleniumLibrary


*** Keywords ***
Otwórz Stronę Główną
    Open Browser    ${SITE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Log Level    DEBUG

Zamknij Przeglądarkę
    Close Browser

Cena Na Liczbę
    [Arguments]    ${text}
    ${clean_text}=    Remove String    ${text}    zł
    ${clean_text}=    Replace String    ${clean_text}    ,    .
    ${float_value}=    Convert To Number    ${clean_text}
    RETURN    ${float_value}
