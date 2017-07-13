package com.healthscience.web.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.healthscience.dao.UserInfoDAO;
import com.healthscience.dao.UserRoleDAO;
import com.healthscience.model.Evaluationform;
import com.healthscience.model.UserInfo;
import com.healthscience.model.UserRole;
import com.healthscience.service.EvaluationService;

@Controller
public class MainController {
	
	@Autowired
	private UserInfoDAO userInfoDAO;
	
	@Autowired
	private UserRoleDAO userRoleDAO;
	
	private static final Logger logger = Logger
			.getLogger(MainController.class);
	
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

		model.setViewName("residentsimulationevaluationform");

		return model;

	}
	

	@Autowired
	private EvaluationService evaluationService;

	@RequestMapping(value = "/saveresidentsimulationevaluationform", method = RequestMethod.POST)
	public ModelAndView saveresidentsimulationevaluationform(@ModelAttribute Evaluationform evaluationrf) {
		
		// ModelAndView modelAndView = new ModelAndView();
		 //System.out.println("evaluationrf==============="+evaluationrf.getResidentName());
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
		return model;
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

		/*ModelAndView model = new ModelAndView();
		UserInfo userInfo = new UserInfo();
		model.addObject("userInfo", userInfo);

		model.setViewName("userform");

		return model;*/

	}
	
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute UserInfo userInfo, SessionStatus status)
	{
		System.out.println("evaluationrf==============="+userInfo.getUsername());
		userInfoDAO.save(userInfo);
		List<String> userro = userInfo.getRole();
		UserRole user = null;
		if(userro != null){
			for(String userr : userro){
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
	public ModelAndView getAllUsers()
	{
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
	
	@ModelAttribute("grademk")
	public List<String> getMedicalKnowledge()
	{
		List<String> grademk = new ArrayList<String>();
		grademk.add("Poor");
		grademk.add("Fair");
		grademk.add("Satisfactory");
		grademk.add("Good");
		grademk.add("Excellent");
		
		return grademk;
	}
	
	@ModelAttribute("gradepf")
	public List<String> getProfessionalism()
	{
		List<String> gradepf = new ArrayList<String>();
		gradepf.add("Poor");
		gradepf.add("Fair");
		gradepf.add("Satisfactory");
		gradepf.add("Good");
		gradepf.add("Excellent");
		
		return gradepf;
	}
	
	@ModelAttribute("gradets")
	public List<String> getTechnicalSkills()
	{
		List<String> gradets = new ArrayList<String>();
		gradets.add("Poor");
		gradets.add("Fair");
		gradets.add("Satisfactory");
		gradets.add("Good");
		gradets.add("Excellent");
		
		return gradets;
	}
	
	@ModelAttribute("gradetw")
	public List<String> getTeamWork()
	{
		List<String> gradetw = new ArrayList<String>();
		gradetw.add("Poor");
		gradetw.add("Fair");
		gradetw.add("Satisfactory");
		gradetw.add("Good");
		gradetw.add("Excellent");
		
		return gradetw;
	}
	
	@ModelAttribute("gradels")
	public List<String> getLeadership()
	{
		List<String> gradels = new ArrayList<String>();
		gradels.add("Poor");
		gradels.add("Fair");
		gradels.add("Satisfactory");
		gradels.add("Good");
		gradels.add("Excellent");
		
		return gradels;
	}

}