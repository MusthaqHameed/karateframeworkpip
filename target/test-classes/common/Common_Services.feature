Feature: HTTP calls

  Background: 
    # Providing the API BASE URL
    * url BASE_URL
    # Providing Header Accept
    * header Accept = 'application/json'
    * configure ssl = true

  # SERVICES CALL - REQUESTS
  # ---------------------------------------------------------------------------------------------------
  @POSTDATA
  Scenario Outline: HTTP Method Testing
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    * path POST
    * request stringname
    * method post
    * print response
    # Validation
    * print response.status
    * match response.status == 'success'
    * print response.data.age
    * match response.data.age == '40'

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |

  @POST
  Scenario: Create employee POST Call
    # Providing the Common Services API (Refer karate-config.js file)
    * path POST
    # Providing the Json payload as a request body
    * request __arg.PAYLOAD
    # Here Authorization
    * header Authorization = AUTH_TOKEN
    # Requesting POST request
    * method post
    * print response
    # Validation
    * print response.status
    * match response.status == 'success'
    * print response.data.name
    * match response.data.name == 'Sachin'

  @POST_NEGATIVE
  Scenario: POST Call
    # Providing the Common BFF Services API (Refer karate-config.js file)
    * path POST_NEGATIVE
    # Providing the Json payload as a request body
    * request __arg.PAYLOAD
    # Here Authorization
    * header Authorization = AUTH_TOKEN
    # Requesting POST request
    * method post
    * print response
    # Validation
    * print responseStatus
    * match responseStatus == 405

  @POSTDATA
  Scenario: Create employee POST Call
    # Providing the Common Services API (Refer karate-config.js file)
    * path POST
    # Providing the Json payload as a request body
    * request __arg.PAYLOAD
    # Here Authorization
    * header Authorization = AUTH_TOKEN
    # Requesting POST request
    * method post
    * print response
    # Validation
    * print response.status
    * match response.status == 'success'
    * print response.data.name
    * match response.data.name == 'Sachin'

  @GET
  Scenario: GET Call
    # Providing the GET Download Template API
    * path GET
    # Authorizing
    * header Authorization = AUTH_TOKEN
    # Requesting GET request
    * method get
    * print responseStatus
    * print response

  @POSTEXCELDATA
  Scenario: Create employee POST Call
    # Providing the Common Services API (Refer karate-config.js file)
    * path POST
    * configure retry = { count: 3, interval: 5000 }
    # Providing the Excel payload as a request body
    * request __arg.PAYLOAD
    # Here Authorization
    * header Authorization = AUTH_TOKEN
    # Requesting POST request
    * method post
    * print response

  @POSTEXCELDATANEGATIVE
  Scenario: Create employee POST Call
    # Providing the Common Services API (Refer karate-config.js file)
    * path POST_NEGATIVE
    # * configure retry = { count: 3, interval: 5000 }
    # * retry until responseStatus == 200
    # Providing the Excel payload as a request body
    * request __arg.PAYLOAD
    # Here Authorization
    * header Authorization = AUTH_TOKEN
    # Requesting POST request
    * method post
    * print responseStatus
    

  @GETEMPLOYEE
  Scenario: GET Call
    # Providing the GET Download Template API
    * path GET_ONE + __arg.PARAM_ID
    # Authorizing
    * header Authorization = AUTH_TOKEN
    # Requesting GET request
    * method get
    * print responseStatus
    * print response
