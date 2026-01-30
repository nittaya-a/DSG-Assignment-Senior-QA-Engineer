*** Settings ***
Resource                web_common.resource

*** Keywords ***
Click On Bank Manager Login Button And Validate The Link Url
    [Arguments]    ${expected_url}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${login.btn_bank_manager_login}
    ...                                              error=The Bank Manager Login button is not visible.
    SeleniumLibrary.Click Element    ${login.btn_bank_manager_login}
    SeleniumLibrary.Location Should Be    url=${expected_url}    message=The actual url doesn't match the expected url. Expected url: ${expected_url}
