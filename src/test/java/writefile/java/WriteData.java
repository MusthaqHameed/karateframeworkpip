package writefile.java;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class WriteData {
	
public void writeExcelData(String sheetName, String data, int rownum,int cellnum) throws IOException {
File file = new File("C:\\Users\\mhameed4\\eclipse-workspace\\KarateApi\\WriteTestData.xlsx");
FileInputStream stream = new FileInputStream(file);
Workbook workbook = new XSSFWorkbook(stream);
Sheet sheet = workbook.getSheet(sheetName);
Row row = sheet.getRow(rownum);
Cell createCell = row.createCell(cellnum);
createCell.setCellValue(data);
FileOutputStream out = new FileOutputStream(file);
workbook.write(out);

}
}
