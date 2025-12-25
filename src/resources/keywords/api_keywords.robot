*** Settings ***
Library    RequestsLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Create_API_Session
    [Arguments]    ${URL}    ${Headers}=&{Common_Headers_Json}
    Create Session    created_current_session    ${URL}    ${Headers}
    
Get_Request
    [Arguments]    ${endpoint}
    ${response}=    GET On Session    created_current_session    ${endpoint}    expected_status=any
    RETURN    ${response}
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

    
