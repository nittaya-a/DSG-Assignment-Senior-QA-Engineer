*** Settings ***
Resource                api_common.resource
Library    JSONLibrary

*** Keywords ***
Send Get Users By Page Request
    [Arguments]    ${x_api_key}    ${page}
    ${param}    BuiltIn.Create Dictionary    page=${page}
    ${header}    BuiltIn.Create Dictionary    x-api-key=${x_api_key}
    RequestsLibrary.Create Session    alias=get-users-by-page    url=${base_url}
    ${response}    RequestsLibrary.GET On Session    alias=get-users-by-page    url=${base_url}${get_users_by_page_end_point}    params=${param}    headers=${header}
    Set Test Variable    ${actual_status_code}    ${response.status_code}
    RETURN    ${response.json()}

Assert The Expected Total Pages Matches The Actual Total Pages In The Response Body
    [Arguments]    ${response_body}
    ${actual_total_pages}    BuiltIn.Set Variable    ${response_body['total_pages']}
    BuiltIn.Should Be Equal As Integers    ${expected_result['total_pages']}    ${actual_total_pages}

Assert Expected Email Exists In The Response Body
    [Arguments]    ${response_body}    ${expected_email}
    ${total_users}    BuiltIn.Get Length    ${response_body['data']}
    ${found}    BuiltIn.Set Variable    ${False}
    FOR    ${index}    IN RANGE   ${total_users}
        ${user}    BuiltIn.Set Variable    ${response_body['data'][${index}]}
        IF    "${user['email']}" == "${expected_email}"
            ${found}    BuiltIn.Set Variable    ${True}
            BREAK
        END
    END
    IF    not ${found}    BuiltIn.Fail    The expected email '${expected_email}' was not found in the response body.
