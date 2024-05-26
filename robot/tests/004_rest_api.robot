*** Settings ***
Library     RequestsLibrary
Library     Collections
Resource    ../configs/settings.robot


*** Test Cases ***
Sprawdzenie Endpointa Produktów
    Create Session    product_session    ${SITE_URL}
    ${response}=    GET On Session    product_session    ${API_PRODUCT_URL}
    Status Should Be    200
    FOR    ${product}    IN    @{response.json()}
        Dictionary Should Contain Key    ${product}    id
        Dictionary Should Contain Key    ${product}    title
        Dictionary Should Contain Key    ${product}    content
    END

Sprawdzenie Istniejącego Produktu
    Create Session    product_session    ${SITE_URL}
    ${response}=    GET On Session    product_session    ${API_PRODUCT_URL}/17
    Status Should Be    200
    ${title}=    Get From Dictionary    ${response.json()}    title
    ${title_rendered}=    Get From Dictionary    ${title}    rendered
    Should Be Equal    ${title_rendered}    Black and White Summer Portrait

Sprawdzenie Nieistniejącego Produktu
    Create Session    product_session    ${SITE_URL}
    ${response}=    GET On Session    product_session    ${API_PRODUCT_URL}/9999    expected_status=404
    Status Should Be    404
    ${msg}=    Get From Dictionary    ${response.json()}    message
    Should Be Equal    ${msg}    Nieprawidłowy identyfikator wpisu.
