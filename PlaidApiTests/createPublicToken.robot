*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     OperatingSystem
Library     JSONLibrary



*** Variables ***
${SandBox_URl}=     https://sandbox.plaid.com
${json_path}=    InputData/



*** Test Cases ***
Passing Wroung Keys, Should Get bad Request For CreatePublicToken

    Create Session    JPSession    ${SandBox_URl}   verify=true

    ${header} =   Create Dictionary  Content-Type=application/json
       
    ${bodyReq}   Get Binary File      ${json_path}wroungPublicCreateToken.json
    ${response} =    POST On Session    JPSession   /sandbox/public_token/create  data=${bodyReq}    headers=${header}      expected_status=anything

    
    #status validation / verification
    ${status}=   Convert To String      ${response.status_code}
    Should Contain     ${status}      400
    Should Be Equal As Strings    Bad Request    ${response.reason}


Passing Invalid Institustion, Should Get bad Request For CreatePublicToken  

    Create Session    JPSession    ${SandBox_URl}   verify=true

    ${header} =   Create Dictionary  Content-Type=application/json
       
    ${bodyReq}   Get Binary File      ${json_path}invalideInstitutionPublicCreateToken.json
    ${response} =    POST On Session    JPSession   /sandbox/public_token/create  data=${bodyReq}    headers=${header}      expected_status=anything

    
    #status validation / verification
    ${status}=   Convert To String      ${response.status_code}
    Should Contain     ${status}      400
    Should Be Equal As Strings    Bad Request    ${response.reason}


Success Call For CreatePublicToken
       
    Create Session    JPSession    ${SandBox_URl}       verify=true

    ${header} =   Create Dictionary  Content-Type=application/json
       
    ${bodyReq}   Get Binary File      ${json_path}publicCreateToken.json
    ${response} =    POST On Session    JPSession   /sandbox/public_token/create  data=${bodyReq}    headers=${header}
    
    #status validation / verification
    ${status}=   Convert To String      ${response.status_code}
    Should Contain     ${status}      200
   
    #data validation / verification
    ${response_body}=   convert to string      ${response.content}
    Should Contain     ${response_body}      public_token
    Should Contain     ${response_body}      request_id
    Log To Console    ${response_body}

