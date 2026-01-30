*** Variables ***
${add_customer.txt_first_name}                xpath=//label[contains(text(), "First Name")]/following-sibling::input
${add_customer.txt_last_name}                 xpath=//label[contains(text(), "Last Name")]/following-sibling::input
${add_customer.txt_post_code}                 xpath=//label[contains(text(), "Post Code")]/following-sibling::input
${add_customer.btn_add_customer}              xpath=//button[text()="Add Customer"]