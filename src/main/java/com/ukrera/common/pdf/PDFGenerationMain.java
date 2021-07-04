package com.ukrera.common.pdf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ukrera.common.model.Customer;
import com.ukrera.common.model.CustomerRepository;

@Controller
public class PDFGenerationMain {

	@Autowired
	CustomerRepository customerRepository;

	@GetMapping(value = "/customers", produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> customersReport() throws IOException {
		List<Customer> customers = (List<Customer>) customerRepository.findAll();

		ByteArrayInputStream bis = PDFGenerator.customerPDFReport(customers);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=customers.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bis));
	}

}
