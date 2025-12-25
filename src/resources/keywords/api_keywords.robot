*** Settings ***
Library    RequestsLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Create_Current_Session
    [Arguments]    ${URL}    ${Headers}=&{Common_Headers_Json}
    Create Session    created_current_session    url=${URL}    headers=${Headers}
    [Return]    created_current_session
    
Get_API
    [Arguments]    ${session}    ${endpoint}
    ${response}=    GET On Session    session=${session}    endpoint=${endpoint}    expected_status=any
    [Return]    ${response}
#
#Post_API
#    [Arguments]    session    endpoint    expected_status=any
#    # TBD
#
#Put_API
#    [Arguments]    session    endpoint    expected_status=any
#    # TBD
#
#Patch_API
#    [Arguments]    session    endpoint    expected_status=any
#    # TBD
#
#Delete_API
#    [Arguments]    session    endpoint    expected_status=any
#    # TBD

    
