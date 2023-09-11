package com.loan.model;

import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Excel {

	public static Workbook generateExcel(List<LoanApplicants> loanApplicants) throws IOException {
		Workbook workbook = new XSSFWorkbook();
		Sheet sheet = workbook.createSheet("Loan Applicants");

		// Create header row
		Row headerRow = sheet.createRow(0);
		headerRow.createCell(0).setCellValue("LOAN APPLICATION ID");
		headerRow.createCell(1).setCellValue("CUSTOMER ID");
		headerRow.createCell(2).setCellValue("APPLICATION DATE");
		headerRow.createCell(3).setCellValue("LOAN TYPE ID");
		headerRow.createCell(4).setCellValue("LOAN AMOUNT");
		headerRow.createCell(5).setCellValue("EMI RANGE FROM");
		headerRow.createCell(6).setCellValue("EMI RANGE TO");
		headerRow.createCell(7).setCellValue("NUMBER OF MONTHS REQUESTED");
		headerRow.createCell(8).setCellValue("CIBIL SCORE");
		headerRow.createCell(9).setCellValue("LOAN STATUS");
		headerRow.createCell(10).setCellValue("CONCLUSION REMARKS");
		headerRow.createCell(11).setCellValue("LAST PROCEED USER");
		headerRow.createCell(12).setCellValue("LAST PROCEED USER DATE");

		int rowNum = 1;
		for (LoanApplicants a : loanApplicants) {
			Row row = sheet.createRow(rowNum++);
			row.createCell(0).setCellValue(a.getId());
			row.createCell(1).setCellValue(a.getCustomer());
			row.createCell(2).setCellValue(a.getApplicationDate());
			row.createCell(3).setCellValue(a.getLoanTypeId());
			row.createCell(4).setCellValue(a.getLoanAmount());
			row.createCell(5).setCellValue(a.getEmiRangeFrom());
			row.createCell(6).setCellValue(a.getEmiRangeTo());
			row.createCell(7).setCellValue(a.getNumberOfMonthsRequested());
			row.createCell(8).setCellValue(a.getCibilScore());
			row.createCell(9).setCellValue(a.getStatus());
			row.createCell(10).setCellValue(a.getConclusionRemarks());
			row.createCell(11).setCellValue(a.getLastprocesseduser());
			row.createCell(12).setCellValue(a.getProcessedDate());

		}

		return workbook;
	}
}