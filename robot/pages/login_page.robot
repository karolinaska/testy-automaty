*** Settings ***
Resource    ../locators/common.robot
Resource    ../locators/login_page.robot
Resource    common.robot


*** Keywords ***
Pobierz Komunikat Błędu
    ${error_message}=    Get Text    ${error_banner}
    RETURN    ${error_message}

Komunikat Błędu Powinien Zawierać
    [Arguments]    ${expected_error_msg}
    ${error_msg}=    Pobierz Komunikat Błędu
    Should Contain    ${error_msg}    ${expected_error_msg}

Wpisz Login
    [Arguments]    ${login_text}
    Input Text    ${login_input}    ${login_text}

Wpisz Hasło
    [Arguments]    ${pass_text}
    Input Text    ${password_input}    ${pass_text}

Wpisz Email
    [Arguments]    ${email_text}
    Input Text    ${email_input}    ${email_text}

Kliknij Zaloguj Się
    Click Button    ${login_button}

Kliknij Zrejestruj Się
    Click Button    ${register_button}
