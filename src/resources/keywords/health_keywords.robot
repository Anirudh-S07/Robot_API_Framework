*** Settings ***
Resource    api_keywords.robot


*** Keywords ***
Perform_Health_Check
    [Arguments]    ${session}
    ${response}=    Get_Request
    ...    ${session}
    ...    /ping
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
    RETURN    Log To Console    ${result}







     


