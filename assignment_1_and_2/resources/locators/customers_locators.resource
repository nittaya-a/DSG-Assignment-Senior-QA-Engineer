*** Variables ***
${customers.txt_search_customer}            xpath=//input[@ng-model="searchCustomer"]
${customers.lbl_specific_first_name}        xpath=//td[text()="{{first_name}}"]
${customers.lbl_specific_last_name}         xpath=//td[text()="{{last_name}}"]
${customers.lbl_specific_postcode}          xpath=//td[text()="{{postcode}}"]
${customers.btn_delete}                     xpath=//button[text()="Delete"]