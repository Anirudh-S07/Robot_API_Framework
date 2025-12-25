*** Settings ***
Library    RequestsLibrary

Resource    ../../resources/keywords/health_keywords.robot
Resource    ../../resources/keywords/Common_Verification.robot
Resource    ../../resources/variables/variables.robot

*** Test Cases ***
Health Check API
    [Tags]    smoke    api    positive
    ${response}=    Perform_Health_Check    ${BASE_URL}
    Log To Console    ${response.status_code}
    Validate_Response_Status_Code    ${response}    201
    Validate_Response_Is_Not_Empty    ${response}


    

#Health Check API Negative
#    [Tags]    smoke    api    negative
#    Create Session    get_session    ${BASE_URL}
#    ${response}=    GET On Session  get_session    /redf    expected_status=404  # Get On Session has an implicit check for failure hence expected_status=404
#    Should Be Equal As Integers    ${response.status_code}    404