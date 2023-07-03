Feature: API_Testing

  @tag1
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = <payload>
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response

    Examples: 
      | read('classpath:testdata/POST_Call_Payload2.json') |
