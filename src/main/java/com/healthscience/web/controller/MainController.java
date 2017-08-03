package com.healthscience.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.MultipartFilter;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.healthscience.dao.CaseLogsFilesUploadDAO;
import com.healthscience.dao.UserDetailsDAO;
import com.healthscience.dao.UserInfoDAO;
import com.healthscience.dao.UserRoleDAO;
import com.healthscience.model.CaseLogFile;
import com.healthscience.model.Evaluationform;
import com.healthscience.model.UserDetail;
import com.healthscience.model.UserEvaluationFormNames;
import com.healthscience.model.UserInfo;
import com.healthscience.model.UserRole;
import com.healthscience.service.EvaluationService;

@Controller
public class MainController {

	@Autowired
	private UserInfoDAO userInfoDAO;

	@Autowired
	private UserDetailsDAO userDetailsDAO;

	@Autowired
	private UserRoleDAO userRoleDAO;
	
	@Autowired
	private CaseLogsFilesUploadDAO caseLogsFilesUploadDAO;

	private static final Logger logger = Logger.getLogger(MainController.class);

	public MainController() {
		System.out.println("MainController()");
	}

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "UT Anesthesia Tracking");
		model.addObject("message", "Home Page");
		model.setViewName("hello");
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/contactpage**", method = RequestMethod.GET)
	public ModelAndView contactpage() {

		ModelAndView model = new ModelAndView();
		model.setViewName("contactpage");

		return model;

	}

	@RequestMapping(value = "/residentsimulationevaluationform/**", method = RequestMethod.GET)
	public ModelAndView residentsimulationevaluationform() {

		ModelAndView model = new ModelAndView();
		Evaluationform evaluationrf = new Evaluationform();
		model.addObject("evaluationrf", evaluationrf);

		List<String> listOfUserNames = userInfoDAO.getUserNames();
		model.addObject("listOfUserNames", listOfUserNames);

		List<String> listOfUserFromNames = userInfoDAO.getUserFormNames();
		model.addObject("listOfUserFromNames", listOfUserFromNames);

		model.setViewName("residentsimulationevaluationform");

		return model;

	}

	@Autowired
	private EvaluationService evaluationService;

	@RequestMapping(value = "/saveresidentsimulationevaluationform", method = RequestMethod.POST)
	public String saveresidentsimulationevaluationform(@ModelAttribute Evaluationform evaluationrf) {

		// ModelAndView modelAndView = new ModelAndView();
		// System.out.println("evaluationrf==============="+evaluationrf.getResidentName());
		// System.out.println("evaluationrf==============="+evaluationrf.getMedicalKnowledge());
		// System.out.println("evaluationrf==============="+evaluationrf.getResidentRank());
		// System.out.println("evaluationrf==============="+evaluationrf.getMkComment());
		// modelAndView.setViewName("hello");

		// modelAndView.addObject("evaluation", evaluationrf);

		evaluationService.addResidentEvaluationData(evaluationrf);
		ModelAndView model = new ModelAndView();
		List<Evaluationform> listOfRe = evaluationService.getAllResidentEvaluation();
		model.addObject("listOfRe", listOfRe);
		model.setViewName("resultsofresidentevaluation");
		return "redirect:resultsofresidentevaluation";
	}

	@RequestMapping(value = "/resultsofresidentevaluation/**")
	public ModelAndView listofResidentEvaluation(ModelAndView model) throws IOException {
		List<Evaluationform> listOfRe = evaluationService.getAllResidentEvaluation();
		model.addObject("listOfRe", listOfRe);
		model.setViewName("resultsofresidentevaluation");
		return model;
	}

	@RequestMapping(value = "/deleteEvaluationInformation", method = RequestMethod.GET)
	public ModelAndView deleteEvaluationInformation(HttpServletRequest request) {
		int evaluationId = Integer.parseInt(request.getParameter("id"));
		System.out.println(evaluationId);
		evaluationService.deleteEvaluationInformation(evaluationId);
		ModelAndView model = new ModelAndView();
		List<Evaluationform> listOfRe = evaluationService.getAllResidentEvaluation();
		model.addObject("listOfRe", listOfRe);
		model.setViewName("resultsofresidentevaluation");
		return model;
	}

	@RequestMapping(value = "/userform**", method = RequestMethod.GET)
	public ModelAndView userform() {

		ModelAndView model = new ModelAndView("userform");
		List<UserInfo> listOfUserData = userInfoDAO.getUserData();
		model.addObject("listOfUserData", listOfUserData);
		UserInfo userInfo = new UserInfo();
		model.addObject("userInfo", userInfo);
		return model;

		/*
		 * ModelAndView model = new ModelAndView(); UserInfo userInfo = new
		 * UserInfo(); model.addObject("userInfo", userInfo);
		 * 
		 * model.setViewName("userform");
		 * 
		 * return model;
		 */

	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute UserInfo userInfo, SessionStatus status) {
		System.out.println("evaluationrf===============" + userInfo.getUsername());
		userInfoDAO.save(userInfo);
		UserDetail userDetail = null;
		userDetail = new UserDetail();
		userDetail.setUsername(userInfo.getUsername());
		userDetail.setDesignation(userInfo.getDesignation());
		userDetail.setUserInfo(userInfo);
		userDetailsDAO.save(userDetail);
		List<String> userro = userInfo.getRole();
		UserRole user = null;
		if (userro != null) {
			for (String userr : userro) {
				user = new UserRole();
				user.setRole(userr);
				user.setUsername(userInfo.getUsername());
				user.setUserInfo(userInfo);
				userRoleDAO.save(user);
			}
		}
		status.setComplete();

		ModelAndView model = new ModelAndView("userform");
		List<UserInfo> listOfUserData = userInfoDAO.getUserData();
		model.addObject("listOfUserData", listOfUserData);
		return model;
	}

	@RequestMapping("/resultsofuserdata/**")
	public ModelAndView getAllUsers() {
		ModelAndView mav = new ModelAndView("resultsofuserdata");
		List<UserInfo> listOfUserData = userInfoDAO.getUserData();
		mav.addObject("listOfUserData", listOfUserData);
		return mav;
	}

	@RequestMapping(value = "/updateprofile", method = RequestMethod.GET, params = { "username" })
	public ModelAndView updateprofile(@RequestParam("username") String username) {
		ModelAndView mav = new ModelAndView("editprofile");
		/*
		 * List<UserDetail> listofuserDetail =
		 * userDetailsDAO.getByusername(username);
		 */
		UserDetail userDetail = userDetailsDAO.getByusername(username);
		mav.addObject("editprofile", userDetail);
		return mav;
	}

	@RequestMapping(value = "/updateprofile", method = RequestMethod.POST)
	public String update(@ModelAttribute("listofuserDetail") UserDetail userDetail, SessionStatus status) {
		userDetailsDAO.update(userDetail);
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping(value = "/deleteUserInfo", method = RequestMethod.GET, params = { "username" })
	public ModelAndView deleteUserInfo(@RequestParam("username") String username) {
		System.out.println(username);
		userDetailsDAO.deleteUserDetails(username);
		userRoleDAO.deleteUserRole(username);
		userInfoDAO.deleteUserInfo(username);
		ModelAndView mav = new ModelAndView("resultsofuserdata");
		List<UserInfo> listOfUserData = userInfoDAO.getUserData();
		mav.addObject("listOfUserData", listOfUserData);
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	@RequestMapping(value = "/evaluationformnames/**", method = RequestMethod.GET)
	public ModelAndView evaluationformnames() {

		ModelAndView model = new ModelAndView();
		UserEvaluationFormNames userEvaluationFormNames = new UserEvaluationFormNames();
		model.addObject("userEvaluationFormNames", userEvaluationFormNames);
		return model;

	}

	@RequestMapping(value = "/saveevaluationformnames", method = RequestMethod.POST)
	public String saveevaluationformnames(@ModelAttribute UserEvaluationFormNames userEvaluationFormNames) {
		userInfoDAO.addUserEvaluationFromNames(userEvaluationFormNames);
		return "redirect:residentsimulationevaluationform";
	}

	@RequestMapping(value = "/caselogupload/**", method = RequestMethod.GET)
	public ModelAndView filesuploadcaselogs() {
		ModelAndView model = new ModelAndView();
		CaseLogFile caseLogFile = new CaseLogFile();
		model.addObject("caseLogFile", caseLogFile);
		return model;
	}
	
	
	@PostMapping("/processExcel") 
	public @ResponseBody String processExcel(@ModelAttribute CaseLogFile caseLogFile) {
		
		System.out.println("fjksf");
		/*try {
			int i = 0;
			// Creates a workbook object from the uploaded excelfile
			HSSFWorkbook workbook = new HSSFWorkbook(excelfile.getInputStream());
			// Creates a worksheet object representing the first sheet
			HSSFSheet worksheet = workbook.getSheetAt(0);
			// Reads the data in excel file until last row is encountered
			while (i <= worksheet.getLastRowNum()) {
				// Creates an object for the UserInfo Model
				CaseLogsFilesUpload caseLogsFilesUpload = new CaseLogsFilesUpload();
				// Creates an object representing a single row in excel
				HSSFRow row = worksheet.getRow(i++);
				// Sets the Read data to the model class
				// user.setId((int) row.getCell(0).getNumericCellValue());
				caseLogsFilesUpload.setCARDIAC_WITH_CPB(row.getCell(1).getStringCellValue());
				caseLogsFilesUpload.setCARDIAC_WITHOUT_CPB(row.getCell(2).getStringCellValue());
				// persist data into database in here 
				caseLogsFilesUploadDAO.getCaseLogsFilesUpload(caseLogsFilesUpload);
			}
			workbook.close();

			
			
		} catch (Exception e) {
			e.printStackTrace();
		}*/

		return "forward:/pages/caselogupload.jsp";
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("403");
		return model;

	}
}