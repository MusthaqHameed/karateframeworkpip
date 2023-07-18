Feature: API_Testing

  @tag1
  Scenario Outline: HTTP method Positive Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print responseStatus
    * print response
    * def res = response
    * print res
    # Validation
    * match responseStatus == 200
    * print response.data.Name
    * def Name = response.data.Name
    #   * match Name == <name>
    * print response.data.Salary
    * match response.data.Salary == <salary>
    * print response.data.Age
    * match response.data.Age == <age>
    * print response.data.id
    * match response.data.id == '#number'
    * def idParam = response.data.id
   
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }
    # Validation
    * print responseStatus
    * match responseStatus == 200
    * print response.data.Salary
    * match response.data.Salary == <salary>
    * print response.data.Age
    * match response.data.Age == <age>
    * print response.data.id
    * match response.data.id == '#number'

    Examples: 
      | read('classpath:testdata/InputDataDriven3.csv') |
