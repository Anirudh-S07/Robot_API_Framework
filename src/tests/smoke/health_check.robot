*** Settings ***
Library    RequestsLibrary
Resource    ../../resources/keywords/api_keywords.robot
Resource    ../../resources/keywords/health_keywords.robot
Resource    ../../resources/keywords/Common_Verification.robot
Resource    ../../resources/variables/variables.robot

*** Test Cases ***
Health Check API
    [Tags]    smoke    api    positive
    Create_Current_Session    ${BASE_URL}
    Perform_Health_Check    Create_Current_Session
    Validate_Response_Status_Code    Get_API    Create_Current_Session    ${Health_Check_URL}


    

#Health Check API Negative
#    [Tags]    smoke    api    negative
#    Create Session    get_session    ${BASE_URL}
#    ${response}=    GET On Session  get_session    /redf    expected_status=404  # Get On Session has an implicit check for failure hence expected_status=404
#    Should Be Equal As Integers    ${response.status_code}    404