## Clone Git Repo to Your machine

https://github.com/jaimin12patel/pythontest.git


## Getting Started 

Before running the API tests for the first time the following steps need to be followed in your local:

1. Install Paython3 or later version 

2. Open the Terminal / Command Prompt

3. Install Following Dependecies 
    -- certifi                    2021.10.8 
    -- jsonpath-rw                1.4.0
    -- jsonpath-rw-ext            1.2.2
    -- py                         1.11.0
    -- requests                   2.27.1
    -- robotframework             4.1.3
    -- robotframework-jsonlibrary 0.3.1
    -- robotframework-requests    0.9.2
    -- setuptools                 58.1.0

4. Install VS Code > Open the cloned project from your local path 

5. Open the Terminal Or Command Prompt to VS Code > Navigate to Cloned project Directory

6. In order to achieved API testing for Plaid APIs, I have used Robotframework with Request Python library 

7. Now, I think we are ready to execute API tests against the plaid API

8. Execute this command "robot PlaidApiTests/createPublicToken.robot"

9. After it's executed you can see results on Terminal / On the Browser Using Roboframework Report "pythontest/log.html"




## Pro & Corns For this framework according to me 

Pro..

1. Open source, Easy to understand and to write test and that could be UI / API test. 
2. It's a very active community across the globe.
3. Easy Inbuilt UI Reporting.
4. It's Keyword Driven Test Framework.
5. This framework we can use in REST and SOAP + database validation.


Cons..

1. Parallel testing does not support but this can be achieved via different dependencies. 
2. Inbuild UI report we can't modify according to our need. 
