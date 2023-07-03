Feature: API_Testing

  @tag1
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    # Validation
    * print response.data.Age
    * match response.data.Age == 40
    * print response.data.id
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |

  @tag2
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    # Validation
    * print response.data.Age
    * match response.data.Age == 40
    * print response.data.id
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |

  @tag3
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    # Validation
    * print response.data.Age
    * match response.data.Age == 40
    * print response.data.id
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |

  @tag4
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    # Validation
    * print response.data.Age
    * match response.data.Age == 40
    * print response.data.id
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |

  @tag5
  Scenario Outline: HTTP  Testing
    # Defining the Excel Payload from the test data Package
    * def stringname = {Name:<name>,Salary:<salary>,Age:<age>}
    * print stringname
    # Calling Common Service.feature
    * call read(COMMON_SERVICES_PATH+'@POSTEXCELDATA') { PAYLOAD:'#(stringname)' }
    * print response
    # Validation
    * print response.data.Age
    * match response.data.Age == 40
    * print response.data.id
    * def idParam = response.data.id
    # Calling Common Service.feature for Created ID
    * call read(COMMON_SERVICES_PATH+'@GETEMPLOYEE') { PARAM_ID:'#(idParam)' }

    Examples: 
      | read('classpath:testdata/InputDataDriven.csv') |
