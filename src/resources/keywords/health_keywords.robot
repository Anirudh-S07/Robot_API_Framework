*** Settings ***
Resource    api_keywords.robot
Resource    ../variables/variables.robot

*** Keywords ***
Perform_Health_Check
    [Arguments]    ${URL}
    Create_API_Session    ${URL}
    ${response}=    Get_Request    ${Health_Check_URL_Endpoint}
    FOR    ${i}    IN RANGE    1    4
        IF    ${response.status_code} == 201
            Log    Success on attempt ${i}
            ${result}=    Set Variable    Success
            Exit For Loop
        ELSE
            ${result}=    Set Variable    UnSuccessful To Check
        END
        Sleep    2s    Just So it does not break
    END
    RETURN    ${response}







     


