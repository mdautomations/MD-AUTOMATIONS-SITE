package com.adaptavant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdaptavantController {

	@RequestMapping("/")
	public String re_directhome(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		return "homelayout";
	}
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "homelayout";
	}
	@RequestMapping("/services")
	public String services(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "servicelayout";
	}
	@RequestMapping("/courses")
	public String courses(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "courseslayout";
	}
	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "aboutlayout";
	}
	@RequestMapping("/appengine-training")
	public String appengine(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "appenginelayout";
	}
	@RequestMapping("/java-training")
	public String java(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "javalayout";
	}
	
	@RequestMapping("/ocp-training")
	public String ocp(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "ocplayout";
	}
	@RequestMapping("/ccna-training")
	public String ccna(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "ccnalayout";
	}
	@RequestMapping("/ns2-training")
	public String ns2(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "ns2layout";
	}
	@RequestMapping("/internship-training")
	public String internship(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "internshiplayout";
	}
//	@RequestMapping("/registration")
//	public String registration(HttpServletRequest request) {
//		request.setAttribute("pageTitle", "MD AUTOMATIONS");
//		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
//		return "registrationlayout";
//	}
	@RequestMapping("/signin")
	public String sign(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "signinlayout";
	}
	
	@RequestMapping("/peers")
	public String peers(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "peerslayout";
	}
	
	@RequestMapping("/profile")
	public String profile(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "profilelayout";
	}
	@RequestMapping("/trees")
	public String tree(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "treelayout";
	}
	@RequestMapping("/international-certifications-training")
	public String certify(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "certificatelayout";
	}
	@RequestMapping("/portal")
	public String portal(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "portal";
	}
	@RequestMapping("/accountsetup")
	public String accountsetup(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "accountsetup";
	}
	@RequestMapping("/projectdelivery")
	public String projectdelivery(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "projectdelivery";
	}
	@RequestMapping("/success")
	public String success(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "success";
	}
	@RequestMapping("/failure")
	public String failure(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "failure";
	}
	@RequestMapping("/feedback")
	public String feedback(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "feedback";
	}
	@RequestMapping("/sathya")
	public String sathya(HttpServletRequest request) {
		request.setAttribute("pageTitle", "MD AUTOMATIONS");
		request.setAttribute("headerbarTitle", "MD AUTOMATIONS");
		return "sathya";
	}
}
