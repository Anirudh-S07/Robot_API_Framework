*** Settings ***


*** Keywords ***
Validate_Response_Is_Not_Empty
    [Arguments]    ${response}
    Should Not Be Empty    ${response.text}

Validate_Response_Status_Code
    [Arguments]    ${response}    ${expected_status_code}
    Should Be Equal As Integers    ${response.status_code}    ${expected_status_code}