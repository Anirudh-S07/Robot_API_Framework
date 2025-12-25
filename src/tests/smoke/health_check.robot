*** Settings ***
Library    RequestsLibrary
Resource    resources/variables.robot

*** Test Cases ***
Health Check API
    Create Session    get_session    ${BASE_URL}
    ${response}=    GET On Session    get_session    /ping
    Should Be Equal As Integers    ${response.status_code}    201