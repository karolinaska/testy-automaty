*** Settings ***
Resource    ../configs/browser.robot
Resource    ../configs/settings.robot
Resource    ../locators/common.robot
Resource    ../utils/utils.robot
Library     SeleniumLibrary
Library     String
Library     OperatingSystem


*** Keywords ***
Kliknij Link Moje Konto
    Click Element    ${header_my_accout_link}
