*** Settings ***
Resource                web_common.resource

*** Keywords ***
Click On Add Customer
    SeleniumLibrary.Wait Until Element Is Visible    locator=${home.btn_add_customer}
    ...                                              error=The Add Customer button is not visible on the homepage.
    SeleniumLibrary.Click Element    ${home.btn_add_customer}
