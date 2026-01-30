*** Settings ***
Resource            web_common.resource

*** Keywords ***
Validate The Expected First Name In The Customer List
    [Arguments]    ${first_name}
    ${expected_first_name_locator}    web_common.Create A New Locator    ${customers.lbl_specific_first_name}    {{first_name}}    ${first_name}
    SeleniumLibrary.Page Should Contain Element    locator=${expected_first_name_locator}
    ...                                            message=The expected first name: ${first_name} was found in the customer list.

Validate The Expected Last Name In The Customer List
    [Arguments]    ${last_name}
    ${expected_last_name_locator}    web_common.Create A New Locator    ${customers.lbl_specific_last_name}    {{last_name}}    ${last_name}
    SeleniumLibrary.Page Should Contain Element    locator=${expected_last_name_locator}
    ...                                            message=The expected last name: ${last_name} was found in the customer list.

Validate The Post Code In The Customer List
    [Arguments]    ${post_code}
    ${expected_postcode_locator}    web_common.Create A New Locator    ${customers.lbl_specific_postcode}    {{postcode}}    ${post_code}
    SeleniumLibrary.Page Should Contain Element    locator=${expected_postcode_locator}
    ...                                            message=The expected postcode: ${post_code} was found in the customer list.

Go To Customer Table And Validate The New Customer Available In The Customer List
    [Arguments]    ${first_name}    ${last_name}    ${post_code}
    web_common.Go To Customers Page
    Validate The Expected First Name In The Customer List    ${first_name}
    Validate The Expected Last Name In The Customer List    ${last_name}
    Validate The Post Code In The Customer List    ${post_code}
