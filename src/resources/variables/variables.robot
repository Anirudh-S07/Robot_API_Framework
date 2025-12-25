*** Variables ***
${BASE_URL}    https://restful-booker.herokuapp.com
${Health_Check_URL_Endpoint}    /ping
&{Common_Headers_Json}
...    Content-Type=application/json
&{Common_Headers_Xml}
...    Content-Type=application/xml
