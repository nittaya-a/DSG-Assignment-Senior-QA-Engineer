*** Settings ***
Resource               ../../common.robot
Variables              ../../config/api.yaml
Variables              ../../test_data/api_data.yaml
Resource               get_users_api.resource

*** Keywords ***
Assert The Expected Status Code Matches The Actual Status Code From The Request
    [Arguments]    ${expected_status_code}
    BuiltIn.Should Be Equal As Integers    ${expected_status_code}    
    ...                                    ${actual_status_code}
    ...                                    msg=The expected status code is ${expected_status_code}, but got ${actual_status_code}.
