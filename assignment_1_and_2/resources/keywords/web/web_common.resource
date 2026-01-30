*** Settings ***
Resource               ../../common.robot
Variables              ../../config/web.yaml
Variables              ../../test_data/web_data.yaml
Resource               ../../locators/common_locators.resource
Resource               ../../locators/login_locators.resource
Resource               ../../locators/home_locators.resource
Resource               ../../locators/add_customer_locators.resource
Resource               ../../locators/customers_locators.resource
Resource               ../../locators/open_account_locators.resource
Resource               login.resource
Resource               home.resource
Resource               add_customer.resource
Resource               customers.resource
Resource               open_account.resource

*** Keywords ***
Create A New Locator
    [Arguments]    ${locator}    ${placeholder}    ${value}
    ${new_locator}    String.Replace String    ${locator}    ${placeholder}    ${value}
    RETURN    ${new_locator}

Get Message From Popup
    ${message}    SeleniumLibrary.Handle Alert
    RETURN    ${message}

Open Link
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser}
    SeleniumLibrary.Maximize Browser Window

Go To Customers Page
    SeleniumLibrary.Wait Until Element Is Visible    locator=${common.btn_customers}
    ...                                              error=The Customers button is not visible.
    SeleniumLibrary.Click Element    ${common.btn_customers}

Go To Open Account Page
    SeleniumLibrary.Wait Until Element Is Visible    locator=${common.btn_open_account}
    ...                                              error=The Open Account button is not visible.
    SeleniumLibrary.Click Element    ${common.btn_open_account}
