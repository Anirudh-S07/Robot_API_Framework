*** Settings ***


*** Keywords ***
Validate_Response_Status_Code
    [Arguments]    ${response}    ${expected_status_code}
    ${response_code}=    ${response}.status_code
    Should Be Equal As Integers    ${response_code} == ${expected_status_code}