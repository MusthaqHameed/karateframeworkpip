 #* def EmailUtils = Java.type('writefile.java.EmailUtils')
#* def to = 'musthaqce96@gmail.com'
#* def subject = 'Test Report'
#* def content = '<html><body><h1>Test Report</h1><p>This is the test report content.</p></body></html>'
#* def attachmentFilePath = 'C:\Users\mhameed4\eclipse-workspace\KarateApi\target\karate-reports\karate-summary.html'

#* call EmailUtils.sendEmail(to, subject, content, attachmentFilePath)

Feature: API_Testing

  @tag1
  Scenario: HTTP Method Testing
   * def Demowriter = Java.type('writefile.java.WriteFile')
   * def result = Demowriter.writeFile('testwritedata.csv','("id"=1)')
   
   #* def writeData = Java.type('writefile.java.WriteData')
#* def res = writeData.writeExcelData('Sheet','response')
    # * def response = response
    #  * def Demowriter = Java.type('writefile.java.WriteFile')
   # * def result = Demowriter.writeFile('testwritedata.csv','#(response)')