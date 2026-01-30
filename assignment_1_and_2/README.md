### Setup and Run Instructions for Assignment 1 and 2

1. **Install Python**

    You can check by running:

    ```
    python3 --version
    ```

    If Python is not installed, download it from [python.org](python.org)

2. **Install Python libraries**
   
   Install all required libraries from requirements.txt:

   ```
   pip3 install -r /path/to/requirements.txt
   ```

3. **Run Robot Framework Tests**
   
   To execute test cases in the tests folder:

   - Run the following command to execute all test cases in assignment 1 test suite:

     ```
     robot -d ./assignment_1_and_2/results/web ./assignment_1_and_2/tests/web/open_bank_account.robot 
     ```

   - Run the following command to execute all test cases in assignment 2 test suite:

     ```
     robot -d ./assignment_1_and_2/results/api ./assignment_1_and_2/tests/api/get_users_by_page_api.robot 
     ```
 