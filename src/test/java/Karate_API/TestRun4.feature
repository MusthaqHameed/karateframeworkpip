Feature: API_Testing

  @tag1
  Scenario: HTTP Method Testing
    # Reading the Json Payload from the test data Package
    * def jsonPayload = read(PAYLOAD_PATH+'POST_Call_Payload.json')
    * print jsonPayload
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POST') { PAYLOAD:'#(jsonPayload)' }
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POST_NEGATIVE') { PAYLOAD:'#(jsonPayload)' }
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@GET')
