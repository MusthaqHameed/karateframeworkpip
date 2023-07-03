Feature: API_Testing

  @tag1
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {"name": <Name1>,"salary":<Salary1>,"age":<Age1>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
     #Validation
    * print response.data.name
    * print response.data.salary
    * def resSalary = <Salary1>
    * match response.data.salary == resSalary
    * print response.data.age
    * def resAge = <Age1>
    * match response.data.age == resAge   
    * print response.data.id
    * match response.data.id == '#number'
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }
    
    Examples: 
      | read('classpath:testdata/POST_Call_Payload3.json') |

    # Calling Common Service.feature for Created ID
    #* call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }