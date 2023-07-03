Feature: API_Testing

  @tag1
  Scenario Outline: HTTP Method Negative Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATANEGATIVE') { PAYLOAD:'#(stringname)' }
    * print response
     * def response = response
      * def Demowriter = Java.type('writefile.java.WriteFile')
    * def result = Demowriter.writeFile('testwritedata.csv','response')
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
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }
    # Validation
    * print response.data.Salary
    * match response.data.Salary == <salary>
    * print response.data.Age
    * match response.data.Age == <age>
    * print response.data.id
    * match response.data.id == '#number'

    Examples: 
      | read('classpath:testdata/InputDataDriven3.csv') |
