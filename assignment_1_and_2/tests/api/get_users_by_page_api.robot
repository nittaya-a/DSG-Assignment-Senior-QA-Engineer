*** Settings ***
Resource                    ../../resources/keywords/api/api_common.resource

*** Test Cases ***
Validate Total Pages Status Code 200 And Expected Email From Get Users By Page Request
    ${response_body}    get_users_api.Send Get Users By Page Request    ${x_api_key}    ${page}
    get_users_api.Assert The Expected Total Pages Matches The Actual Total Pages In The Response Body    ${response_body}
    api_common.Assert The Expected Status Code Matches The Actual Status Code From The Request    ${expected_result['status_code']}
    get_users_api.Assert Expected Email Exists In The Response Body    ${response_body}    ${expected_result['email']}