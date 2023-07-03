Feature: API_Testing

  @tag1
  Scenario: HTTP Method Testing
   * def Demowriter = Java.type('writefile.java.WriteFile')
   * def result = Demowriter.writeFile('testwritedata.csv','("id"=1)')