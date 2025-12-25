*** Settings ***
Resource    api_keywords.robot
Resource    ../variables/variables.robot

*** Keywords ***
Perform_Health_Check
    [Arguments]    ${session}
    ${response}=    Get_API    
    ...    ${session}
    ...    /ping
    FOR    ${i}    IN RANGE    1    4
        IF    ${response.status_code} == 201
            Log    Success on attempt ${i}
            ${result}=    "Success
            Exit For Loop
        ELSE
            ${result}=    UnSuccessful To Check
        END
        Sleep    2s    Just So it does not break
    END
    [Return]    Log To Console    ${result}







     


