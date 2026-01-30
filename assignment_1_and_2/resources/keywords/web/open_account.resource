*** Settings ***
Resource                web_common.resource

*** Keywords ***
Select A Customer By Customer Full Name
    [Arguments]    ${full_name}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${open_account.ddl_user_select}
    ...                                              error=The User Select dropdown is not visible on the Open Account page.
    SeleniumLibrary.Select From List By Label    ${open_account.ddl_user_select}    ${full_name}

Select Currency
    [Arguments]    ${currency}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${open_account.ddl_currency}
    ...                                              error=The Currency dropdown is not visible on the Open Account page.
    SeleniumLibrary.Select From List By Value    ${open_account.ddl_currency}    ${currency}

Click Process Button
    SeleniumLibrary.Wait Until Element Is Visible    locator=${open_account.btn_process}
    ...                                              error=The Process button is not visible on the Open Account page.
    SeleniumLibrary.Click Element    ${open_account.btn_process}

Go To Open Account Section Then Select Newly Added Customer From Dropdown And Select Currency From Dropdown And Click On Process
    [Arguments]    ${full_name}    ${currency}
    web_common.Go To Open Account Page
    open_account.Select A Customer By Customer Full Name    ${full_name}
    open_account.Select Currency    ${currency}
    open_account.Click Process Button

Verify The Account Created Popup Message With Content Of Message
    [Arguments]    ${expected_message}
    ${full_account_created_message}    web_common.Get Message From Popup
    BuiltIn.Should Contain    ${full_account_created_message}    ${expected_message}
