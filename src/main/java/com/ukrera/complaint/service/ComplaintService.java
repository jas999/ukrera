package com.ukrera.complaint.service;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ukrera.complaint.model.ComplaintDocument;
import com.ukrera.complaint.model.ComplaintModel;
import com.ukrera.complaint.repository.ComplaintDocumentRepository;
import com.ukrera.complaint.repository.ComplaintRepository;
import com.ukrera.utils.CommonUtils;

@Service
public class ComplaintService {

	@Autowired
	private ComplaintRepository complaintRepository;

	@Autowired
	private ComplaintDocumentRepository docRepo;

	@Autowired
	private JavaMailSender javaMailSender;

	@Transactional
	public ComplaintModel saveComplaint(ComplaintModel cm, String[] captions, MultipartFile[] supportDoc) {

		complaintRepository.save(cm);
		String registratioNo = generateComplaintRegistrationNo(cm);
		cm.setComplaintRegistrationNo(registratioNo);
		

		for (MultipartFile doc : supportDoc) {

			ComplaintDocument cd = new ComplaintDocument();
			cd.setDocumentName(doc.getName());
			cd.setFileName(doc.getOriginalFilename());
			cd.setDocumentPath("E:\\myprojects\\ukrera");
			cd.setComplaintId(cm.getId());
			docRepo.save(cd);

			try {
				CommonUtils.saveFile(cd.getDocumentPath(), cd.getFileName(), doc);
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		return complaintRepository.save(cm);

	}

	

	private static String generateComplaintRegistrationNo(ComplaintModel cm) {

		String pattern = "dd/MM/yyyy HH:mm:ss";

		// Create an instance of SimpleDateFormat used for formatting
		// the string representation of date according to the chosen pattern
		DateFormat df = new SimpleDateFormat(pattern);

		// Get the today date using Calendar object.
		Date today = Calendar.getInstance().getTime();
		// Using DateFormat format method we can create a string
		// representation of a date with the defined format.
		String todayAsString = df.format(today);

		todayAsString = todayAsString.replace("/", "").replace(" ", "/").replace(":", "") + "/" + cm.getId();

		// Print the result!
		System.out.println("Today is: " + todayAsString);

		return todayAsString;

	}

	public Iterable<ComplaintModel> findAllComplaints() {

		return complaintRepository.findAll();

	}

	public void sendEmail() {

		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo("jaspreets@outlinesystemsindia.com", "jaspreet605@gmail.com");

		msg.setSubject("Testing from Spring Boot");
		msg.setText("Hello World \n Spring Boot Email");

		javaMailSender.send(msg);

	}

	void sendEmailWithAttachment() throws MessagingException, IOException {

		MimeMessage msg = javaMailSender.createMimeMessage();
		// true = multipart message
		MimeMessageHelper helper = new MimeMessageHelper(msg, true);
		helper.setTo("to_@email");
		helper.setSubject("Testing from Spring Boot");

		helper.setText("<h1>Check attachment for image!</h1>", true);

		// hard coded a file path
		// FileSystemResource file = new FileSystemResource(new
		// File("path/android.png"));

		helper.addAttachment("my_photo.png", new ClassPathResource("android.png"));

		javaMailSender.send(msg);

	}
}
