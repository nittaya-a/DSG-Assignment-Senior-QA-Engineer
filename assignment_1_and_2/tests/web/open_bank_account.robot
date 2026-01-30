*** Settings ***
Resource                    ../../resources/keywords/web/web_common.resource

*** Test Cases ***
Open A New Bank Account
    web_common.Open Link
    login.Click On Bank Manager Login Button And Validate The Link Url    ${url}
    home.Click On Add Customer
    add_customer.Fill The Information And Add The New Customer    ${first_name}    ${last_name}    ${post_code}
    customers.Go To Customer Table And Validate The New Customer Available In The Customer List    ${first_name}    ${last_name}    ${post_code}
    open_account.Go To Open Account Section Then Select Newly Added Customer From Dropdown And Select Currency From Dropdown And Click On Process    ${full_name}    ${currency}
    open_account.Verify The Account Created Popup Message With Content Of Message    ${account_created_successfully_message}
    