package com.ukrera.complaint.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ukrera.admin.UserMaster;
import com.ukrera.common.Constants;
import com.ukrera.common.MailService;
import com.ukrera.complaint.model.ComplaintDocument;
import com.ukrera.complaint.model.ComplaintModel;
import com.ukrera.complaint.repository.ComplaintDocumentRepository;
import com.ukrera.complaint.repository.ComplaintRepository;
import com.ukrera.complaint.service.ComplaintService;

import javassist.tools.rmi.ObjectNotFoundException;

@Controller
@RequestMapping
public class ComplaintController {

	@Autowired
	private ComplaintService service;

	@Autowired
	private ComplaintRepository repo;

	@Autowired
	private ComplaintDocumentRepository complaintDocRepo;

	@Autowired
	private MailService mailService;

	@RequestMapping(path = "/complaintform")
	public ModelAndView viewComplaintForm(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("complaintModel", new ComplaintModel());
		mv.setViewName("complaint_form");
		return mv;
	}

	@RequestMapping(path = "/viewcomplaint")
	public ModelAndView view(@RequestParam(name = "id") Long id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("complaintModel", repo.findById(id).get());
		mv.addObject("complaintDocumentList", complaintDocRepo.findByComplaintId(id));
		mv.addObject("showAssignment", true);
		mv.setViewName("complaint_form");
		return mv;
	}

	@PostMapping(path = "/saveComplaint")
	public ModelAndView saveComplaint(@ModelAttribute("complaintModel") ComplaintModel complaintModel,
			@RequestParam(value = "captions", required = false) String[] captions,
			@RequestParam(value = "supportDoc", required = false) MultipartFile[] supportDoc,
			HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		//Long loggedInUserId = session.getAttribute("loggedInUsedId") != null ? (Long)session.getAttribute("loggedInUsedId") : null;
		Long loggedInUsedId = 1l ;
		
		complaintModel.setAssignedToRole(Constants.OPERATOR_TECHNICAL_ROLE);
		
		ComplaintModel cm = service.saveComplaint(complaintModel, captions, supportDoc);
		if (cm.getId() > 0) {
			mailService.sendMail();
			mv.addObject("registrationNumber", cm.getComplaintRegistrationNo());
			mv.setViewName("complaint_success");
		} else {
			mv.setViewName("complaint_form");
		}
		return mv;
	}

	@GetMapping(path = "/viewallcomplaints")
	public ModelAndView saveComplaint() {

		Iterable<ComplaintModel> allComplaints = service.findAllComplaints();
		ModelAndView mv = new ModelAndView();
		mv.addObject("complaintList", allComplaints);
		mv.setViewName("complaint_list");

		return mv;
	}

	@RequestMapping(path = "/complaint/download")
	public void downloadComplaintDocument(@RequestParam("id") Long id, HttpServletResponse response)
			throws ObjectNotFoundException {

		ComplaintDocument cd = complaintDocRepo.findById(5l)
				.orElseThrow(() -> new ObjectNotFoundException("Complaint Document"));

		System.out.println("Downloading file :- " + cd.getFileName());

		String downloadFolder = cd.getDocumentPath();
		Path file = Paths.get(downloadFolder, cd.getFileName());
		// Check if file exists
		if (Files.exists(file)) {
			// set content type
			response.setContentType("application/pdf");
			// add response header
			response.addHeader("Content-Disposition", "attachment; filename=" + cd.getFileName());
			try {
				// copies all bytes from a file to an output stream
				Files.copy(file, response.getOutputStream());
				// flushes output stream
				response.getOutputStream().flush();
			} catch (IOException e) {
				System.out.println("Error :- " + e.getMessage());
			}
		} else {
			System.out.println("Sorry File not found!!!!");
		}

	}

	/*
	 * @PostMapping(value="saveComplaint") public ModelAndView
	 * saveComplaint(@ModelAttribute("complaintModel") ComplaintModel
	 * complaintModel,
	 * 
	 * @RequestParam(value="captions",required=false)String[] captions,
	 * 
	 * @RequestParam(value="supportDoc",required=false)MultipartFile[] supportDoc,
	 * 
	 * @RequestParam("attachSignature") MultipartFile attachSignature,
	 * 
	 * @RequestParam("attachScanCopy") MultipartFile attachScanCopy,
	 * 
	 * HttpServletRequest request, HttpServletResponse response) {
	 * 
	 * System.out.println("This is form Test");
	 * 
	 * return null ; }
	 */
}
