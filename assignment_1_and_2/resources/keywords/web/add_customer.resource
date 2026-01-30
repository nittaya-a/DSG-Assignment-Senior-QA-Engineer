*** Settings ***
Resource            web_common.resource

*** Keywords ***

Input First Name
    [Arguments]    ${first_name}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${add_customer.txt_first_name}
    ...                                              error=The first name field is not visible on the Add Customer page.
    SeleniumLibrary.Input Text    ${add_customer.txt_first_name}    ${first_name}

Input Last Name
    [Arguments]    ${last_name}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${add_customer.txt_last_name}
    ...                                              error=The last name field is not visible on the Add Customer page.
    SeleniumLibrary.Input Text    ${add_customer.txt_last_name}    ${last_name}

Input Postcode
    [Arguments]    ${post_code}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${add_customer.txt_post_code}
    ...                                              error=The post code field is not visible on the Add Customer page.
    SeleniumLibrary.Input Text    ${add_customer.txt_post_code}    ${post_code}

Click Add Customer Button
    SeleniumLibrary.Wait Until Element Is Visible    locator=${add_customer.btn_add_customer}
    ...                                              error=The Add Customer button is not visible on the Add Customer page.
    SeleniumLibrary.Click Element    ${add_customer.btn_add_customer}

Fill The Information And Add The New Customer
    [Arguments]    ${first_name}    ${last_name}    ${post_code}
    add_customer.Input First Name    ${first_name}
    add_customer.Input Last Name    ${last_name}
    add_customer.Input Postcode    ${post_code}
    add_customer.Click Add Customer Button
    SeleniumLibrary.Handle Alert    
