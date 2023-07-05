Feature: API_Testing

  @tag1
  Scenario Outline: HTTP Method Negative Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    * def res = response
    * print res
    # Validation
    # * print response.data.Name
    #  * match response.data.Name == <name>
    * print response.data.Salary
    * match response.data.Salary == <salary>
    * print response.data.Age
    * match response.data.Age == <age>
    * print response.data.id
    * match response.data.id == '#number'
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEENEGATIVE') { PARAM_ID:'#(idParam)' }
    * print responseStatus
    * def status = responseStatus
    * print status
    * def filePath = 'writeTestData.csv'
    * eval karate.write( status, filePath)
    # Validation
    * print response.data.Salary
    * match response.data.Salary == <salary>
    * print response.data.Age
    * match response.data.Age == <age>
    * print response.data.id
    * match response.data.id == '#number'

    Examples: 
      | read('classpath:testdata/InputDataDriven2.csv') |
