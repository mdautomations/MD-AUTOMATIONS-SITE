package com.adaptavant.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


//import com.adaptavant.service.GoogleStorageService;
import com.adaptavant.dto.MultiPartFileUpload;
import com.adaptavant.dto.photoMultiPartFileUpload;
import com.adaptavant.service.AdaptavantRegisterService;
import com.adaptavant.util.CommonUtils;
import com.adaptavant.util.EmailUtil;
import com.adaptavant.util.ModeUtil;
import com.google.appengine.api.utils.SystemProperty;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.adaptavant.controller.Entry;
import com.adaptavant.controller.PMF;
//import com.google.appengine.api.datastore.Blob;
@Controller
public class AdaptavantRegisterAction {
	
	private static final Logger log = Logger.getLogger(AdaptavantRegisterAction.class.getName());
	private static final long serialVersionUID = 1L;
	ResourceBundle lResourceBundle = ResourceBundle.getBundle("ApplicationResources");
	AdaptavantRegisterService mAdaptavantRegisterService =new AdaptavantRegisterService(); 
	
	/**
	 * Controller class which recives the form Data.
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 * @throws JsonMappingException 
	 * @throws JsonGenerationException 
	 */
	@RequestMapping( value ="/authenticateUser" , method =  RequestMethod.GET)
	public void authenticateUser(HttpServletRequest request, HttpServletResponse response)
	{
		
		String serviceProvider = AuthenticationUtil.GOOGLE_AUTHENTICATION_PROVIDER_ID;
		
		log.info("the service Provider ::"+serviceProvider);
		String remoteHost = request.getRemoteHost();
		
		if(remoteHost.contains("127.0.0.1"))
		{			
			remoteHost = "localhost:8889";
		}
		else
		{
			remoteHost = request.getServerName();
		}
		
		String redirectURL = "http://" + remoteHost + "/verifyOpenIdResponseJson";
		try
		{
			log.info("redirectURL:::" + redirectURL);
			OpenIdAuthenticationProvider authenticaionProvider = OpenIdAuthenticationProviderFactory.getAuthenticationProvider(serviceProvider);	
			response.sendRedirect(authenticaionProvider.authenticateUser(request, redirectURL));
		}
		catch(Exception e)
		{
			log.info("Exception while sendRedirect::"+e);
			e.printStackTrace();
		}	
	}
	/*
	 * This method is the callback of the google authentication which checks for the email exists and redirects to the chatbuilder page or login page acc.. 
	 */
	
	@SuppressWarnings({ "unchecked", "null" })
	@RequestMapping(value="/registerAction",method = RequestMethod.POST )
	public @ResponseBody String  regVoiceCurve(MultiPartFileUpload sMultiPartFileUpload,HttpServletRequest request,HttpServletResponse response)throws NullPointerException, JsonGenerationException, JsonMappingException, IOException
	{
		String	type					  = 		lResourceBundle.getString( "type" );
		String sName 					  = 		"";
		String sEmail 					  = 		"";
		String sExperience				  =			"";
		String sAppliedFor				  = 		"";
		String sPhone					  = 		"";
		String sReferrer				  =			"";
		String mailBody					  = 		"";
		String sAccountNumber			  =			"";
		String sMailContentToRegistry	  =			"";
		String sRegisteredContactID		  =			"";
		String sMessage					  = 		"";
		boolean status 					  = 		false , primaryContactFlag = true;
		ObjectMapper objectMapper 		  = 		new ObjectMapper();
		HashMap  registrationMap		  = 		new HashMap();
		String	 MIMEType				  =			null;
		String	 FileExtention 			  = 		null;
		String fileContentinBase64		  =  		null;
		Cookie [] cookies         		  = 		null;
		String cookieName				  = 		"utmz";
		String [] content 				  = 		{};
		String utmgclid					  =			"";
		String registrationJSON			  = 		"";
		HashMap<String,Object>	locationDetails		=	null;
		HashMap<String,String>	brodwerDetails		=	null;
		try
			{
				sName  					= 	sMultiPartFileUpload.getFirstname();
				sEmail 					= 	sMultiPartFileUpload.getEmail();
				sPhone					= 	sMultiPartFileUpload.getPhone();
				sReferrer				= 	sMultiPartFileUpload.getReferer();
				sMessage				=   sMultiPartFileUpload.getMessage();
				
				if(sEmail!=null&&sName!=null&&sPhone!=null&&sMessage!=null)
				{ 
					mailBody		=	"<html><body><div><h3>MD AUTOMATIONS Lead Detail:</h3><ul>Name :&nbsp;"+sName+"</ul></br><ul>Email :&nbsp;&nbsp;"+sEmail+"</ul></br><ul>Phone :&nbsp;"+sPhone+"</ul></br><ul>Where did you heared about us : "+sReferrer+"<br><ul>Message :&nbsp;"+sMessage+"</ul></br></div></body></html>";
				}

				if((!sMultiPartFileUpload.getFile().getOriginalFilename().toString().equals("null"))||((!sMultiPartFileUpload.getFile().getOriginalFilename().toString().equals(""))))
				{
					byte[] sFileContent				=	sMultiPartFileUpload.getFile().getBytes();
					Base64 base64 					= 	new Base64();
					fileContentinBase64				=	new String(base64.encode(sFileContent));
					String sFileName				=	sMultiPartFileUpload.getFile().getOriginalFilename();
					FileExtention 					= 	sFileName.substring(sFileName.lastIndexOf('.') + 1);
					log.info("File Name: "+sFileName);
					log.info("FileExtention :: "+FileExtention);
					log.info("File Size: "+sMultiPartFileUpload.getFile().getSize());
					if(sMultiPartFileUpload.getFile().getSize()>=3150000||sMultiPartFileUpload.getFile().getSize()==0)
					{
						log.info("file size is new");
						registrationMap.put("filesize","huge");
						registrationMap.put("registration","failed");
						registrationMap.put("phone","false");
						registrationMap.put("contactID", "false");
						registrationMap.put("accountNumber", "false");
						registrationMap.put("email", "false");
						registrationJSON 	= 	objectMapper.writeValueAsString( registrationMap );
						return registrationJSON;
					}
					else
					{
						log.info("file size is normal");
						registrationMap.put("filesize","normal");
					}
					if (FileExtention.equalsIgnoreCase("pdf")) 
					{
						MIMEType		=	"application/pdf";
					} 
					else if(FileExtention.equalsIgnoreCase("doc") || FileExtention.equalsIgnoreCase("docs"))
					{
						MIMEType		=	"application/msword";
					}
					else if (FileExtention.equalsIgnoreCase("docx")) 
					{
						MIMEType		=	"application/vnd.openxmlformats-officedocument.wordprocessingml.document";
					}
					else if (FileExtention.equalsIgnoreCase("odt")) 
					{
						MIMEType		=	"application/vnd.oasis.opendocument.text";
					}
					else if (FileExtention.equalsIgnoreCase("jpg")) 
					{
						MIMEType		=	"image/jpeg";
					}
					else if (FileExtention.equalsIgnoreCase("jpeg")) 
					{
						MIMEType		=	"image/jpeg";
					}
					else if (FileExtention.equalsIgnoreCase("png")) 
					{
						MIMEType		=	"image/png";
					}
					else if (FileExtention.equalsIgnoreCase("gif")) 
					{
						MIMEType		=	"image/gif";
					}
					else if (FileExtention.equalsIgnoreCase("html")) 
					{
						MIMEType		=	"text/html";
					}
					else if (FileExtention.equalsIgnoreCase("bmp")) 
					{
						MIMEType		=	"image/bmp";
					}
					else if (FileExtention.equalsIgnoreCase("rtf")) 
					{
						MIMEType		=	"application/rtf";
					}
					else{
						registrationMap.put("fileformat", "failed");
						registrationJSON = objectMapper.writeValueAsString( registrationMap );
						return registrationJSON;
					}
					try
					{
						if(MIMEType==null || MIMEType=="")
						{
							MIMEType = "application/"+FileExtention.toLowerCase();
						}
					}
					catch(Exception e)
					{
						String message = "<b>Registraion Failed ! <br>ProjectName:	MD AUTOMATIONS<br>AppID:	"+ SystemProperty.applicationId.get()+"<br> <br> <b>Name : </b>"+sName+"<br> <b>Email:</b>"+sEmail+"<br><b>Phone :</b>"+sPhone+"<br><b>Message :</b>"+sMessage;
						EmailUtil.sendStatusMail("Registration-Failed - While setting Mime Type",message,"dev");
					}
					EmailUtil.sendMailToAdaptavantAttachment(mailBody,sFileContent,sFileName);
				}
				
				brodwerDetails					=	CommonUtils.getBrodwerDetails((String)request.getHeader("User-Agent"));
				log.info("browserdetails :: "+brodwerDetails);
				log.info("First Name: "+sName);
				log.info("Email: "+sEmail);
				log.info("Phone: "+sPhone);
				log.info("Referrer: "+sReferrer);
				log.info("sMessage: "+sMessage);
				String persisit = new helper().registertoDB(brodwerDetails,sName,sEmail,sPhone,sReferrer,sMessage);
//				String sClientMail = getMailBody(sName);
				
//				log.info("sClientMail is this: "+sClientMail);
				log.info("persisit is this: "+persisit);
				
				if(persisit.equalsIgnoreCase("success"))
				{
					registrationMap.put("registration", "success");
				}
				else
				{
					registrationMap.put("registration", "failed");
				}
					
					registrationMap.put("phone", sPhone);
					registrationMap.put("email",sEmail);
					registrationMap.put("message",sMessage);
					registrationMap.put("name",sName);
					EmailUtil.sendMailToAdaptavantAttachmentWithoutfile(mailBody);
//					EmailUtil.sendMailToClient(sClientMail,sEmail);
			}
		catch ( Exception ex )
		{
				log.log( java.util.logging.Level.SEVERE , "\n name: " + sName + "\n sAppliledFor: " + sAppliedFor + "\n email: " + sEmail
				        + "\n sExperience: " +sExperience+   "\n" , ex );
				String message = "<b>Registraion Failed ! <br>ProjectName:	MD AUTOMATIONS<br>AppID:	"+ SystemProperty.applicationId.get()+"<br> <br> <b>Name : </b>"+sName+"<br> <b>Email:</b>"+sEmail+"<br><b>Phone :</b>"+sPhone+"<br><b>Message :</b>"+sMessage;
				EmailUtil.sendStatusMail("Registration-Failed",message,"dev");
				registrationMap.put("registration", "failed");
		}
		
		registrationJSON = objectMapper.writeValueAsString( registrationMap );
		
		log.info("FINAL REGISTRATION STATUS EXCLUDING AR::  "+registrationJSON);
		
		return registrationJSON;
	}
	
	static Map setContactMethodMap( String pTitle , String pValue , String pType , Map pContactMethodMap )
	{
		try
			{
				pContactMethodMap.put( "title" , pTitle );
				pContactMethodMap.put( "value" , pValue );
				pContactMethodMap.put( "type" , pType );
			}
		catch ( Exception ex )
			{
				log.log( java.util.logging.Level.SEVERE , "\n pTitle: " + pTitle + "\n pValue: " + pValue + "\n pType: " + pType
				        + "\n pContactMethodMap: " + pContactMethodMap + "\n" , ex );
			}

		return pContactMethodMap;
	}
	@RequestMapping(value="/logout" , method = RequestMethod.GET )
	public String Logout( HttpSession session, Model model , HttpServletRequest request , HttpServletResponse response)
		{
			log.info( "Inside logout method. Going to log out" );
			try
				{
					session.removeAttribute( "loginmap" );
					session.invalidate();
					log.info( "Forwarding to Index" );
					
				}
			catch ( Exception e )
				{
					e.printStackTrace();
					log.info( "Exception while removing/invalidating session" + e.getMessage() );
				}
				
				return "redirect:/" ;
		}
  	
	public String getMailBody(String studentname,String studentemail,String mode, String studentmobile,String studentcollege,String studentdegree,String projectcourse,String referal)
	{
		String sMail ="";
//		sMail="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"+
//			"<html xmlns='http://www.w3.org/1999/xhtml'>"+
//				"<head>"+
//				"</head>"+
//				"<body>"+
//				"<table cellpadding='0' cellspacing='0' border='0' width='600px' style='font-family:helvetica; font-size:12px;'>"+
//				"<tr>"+
//					"<td>"+
//						"<table cellpadding='0' cellspacing='0' width='600px' bgcolor='#f0f0f0' border='0' style=' border:1px solid #e3e2e2; padding:10px 30px 30px;'>"+
//		            	"<tr>"+
//		                	"<td valign='bottom'><a href='www.mdautomations.com'><img src='http://mdautomations.com/MDLOGO.png' width='246' height='88' alt='www.mdautomations.com' border='0' /></a></td>"+
//		                    "<td align='right' valign='bottom'>"+
//		                    	"<p style='color:#4c4c4c; line-height:18px;'>sales@mdautomations.com <br />"+
//		                    	"+91.99.52592624</p>"+
//		                     "</td>"+
//		                "</tr>"+
//		                "<br/>"+
//		                "<br/>"+
//		                "<tr>"+
//			            	"<td colspan='2' style='height:170px; #height:140px; ' align='center'>"+
//			                	"<img src='http://9.etacreatives.appspot.com/thankyou.png' width='310' height='99' />"+
//			                "</td>"+
//		                "</tr>"+
//		                "<br/>"+
//		                "<tr>"+
//		                	"<td colspan='2' style='#padding:0px 30px 15px;'>"+
//		                    	"<h3 style='color:#4c4c4c; font-size:15px; margin:0px; '>Hi "+sName +",</h3>"+
//		                    "</td>"+
//		                "</tr>"+
//		                "<br/>"+
//		                "<br/>"+
//		                "<tr>"+
//		                	"<td colspan='2' style='#padding:0px 30px 15px;>"+
//		                    	"<p style='font-size:13px; color:#4c4c4c; line-height:24px;'>We will get back to you with potential ideas on your requirement.</p>"+
//		                    "</td>"+
//		                "</tr>"+
//		                "<tr>"+
//		                	"<td colspan='2' style='#padding:0px 30px 15px;'>"+
//		                    	"<p style='font-size:13px; color:#4c4c4c; line-height:24px;'>We do the best at MD Automations. Your project is half done, the moment you landed at MD Automations.</p>"+
//		                    "</td>"+
//		                "</tr>"+
//		                "<tr>"+
//		                	"<td colspan='2'  style='#padding:0px 30px 15px;'>"+
//		                    	"<p style='font-size:13px; color:#4c4c4c; line-height:24px;'>Thank's for your interest in MD Automations.</p>"+
//		                    "</td>"+
//		                "</tr>"+
//		                "<tr>"+
//		                	"<td colspan='2'>"+
//		                    	"<p style='font-size:13px; color:#4c4c4c; line-height:18px;'><b>Regards,</b><br style='margin-bottom:10px;' />"+
//		                            "Sales and Marketing Department,<br />"+
//		                            "MD Automations.<br />"+
//		                            "sales@mdautomations.com<br />"+
//		                            "+91.99.52.592624"+
//		                         "</p>"+
//		                    "</td>"+
//		                "</tr>"+
//		                "</table>"+
//	                "</td>"+
//                "</tr>"+
//                "<tr>"+
//                	"<td align='center' style='padding-top:20px; color:#4c4c4c;'>&#169; MD Automations.</td>"+
//                "</tr>"+
//                "</table>"+
//                "</body>"+	
//				"</html>";		
sMail = "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"+
		"<html xmlns='http://www.w3.org/1999/xhtml'>"+
		"<head>"+
		"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
		"<title>MD Automations Client Receipt</title>"+
		"</head>"+

		"<body bgcolor='#f5f6f7'>"+
		"<div  style='background-color:#f5f6f7; width:750px;' >"+
		"<div style='background-color: #000000;background-repeat:repeat-x; height:0px;'>&nbsp;</div>"+
			"<table width='650px' cellpadding='0' cellspacing='0' border='0' style='margin:30px auto;'>"+
		      "<tr>"+
		            "<td width='300px'>"+
		                "<a href='www.mdautomations.com'><img src='http://mdautomations.com/MDLOGO.png' width='246' height='90' border='0' alt='MD Automations' /></a>"+
		            "</td>"+
		            "<td width='359px' align='right' valign='bottom'>"+
		                "<span style='font-family:Helvetica; font-size:14px; color:#808080;'>Have a Question?<br /><b style='color:#434341; text-decoration:underline; font-size:16px; text-decoration:none;'>Call 91.9952592624,91.9486404049</b></span>"+
		            "</td>"+
		       "</tr>"+
		       "<tr>"+
		       		"<td height='10px'></td>"+
		       "</tr>"+
		        "<tr>"+
					"<td colspan='3'>"+
					"<h3 style='background:url(http://mdautomations.com/bg.png) #2080bc no-repeat 0px; border-radius:10px 10px 0px 0px; width:626px; min-height:71px; padding:40px 0 0 25px; margin:0px 1px; font-family:helvetica;color:#ffffff; font-size:23px;'>Thank you for registering with us!</h3>"+
					"</td>"+
				"</tr>"+
		        "<tr>"+
		            "<td colspan='3' background='http://mdautomations.com/bg_content.gif' >"+
		                    "<table cellpadding='0' cellspacing='0' border='0' width='100%'>"+
		                          "<tr>"+
		                             "<td colspan='2' height='30px' >&nbsp;</td>"+
		                          "</tr>"+
		                          "<tr>"+
		                            "<td colspan='2' background='http://mdautomations.com/bg_content.gif' width='417px' style='font-family: helvetica; padding-right:7px; padding-left:7px; font-size:12px; color:#000000; '>"+
		                                "<table cellpadding='0' cellspacing='0' border='0' style='margin:0px 23px;'>"+
		                                   " <tr>"+
		                                        "<td valign='top'>"+
		                                        	"<div style='font-family:helvetica; font-size:14px; font-weight:bold; color:#333333; margin:0px 0px 20px 0px;'>Dear "+studentname+" ,</div>"+
		                                            
		                                        	"<p style='margin:0px 0px 20px 0px; font-size:13px; line-height:22px;'>Thank you for signing up with MD Automations!</p>"+
		                                            "<p style='margin:0px 0px 20px 0px; line-height:22px; font-size:13px;'>Here is your confirmation mail, we understand that you authorize the informartion you have given are true. MD Automations will serve you better in all your technical needs throughout your academic stream.</p>"+
		                                            "<p style='margin:0px 0px 23px 0px; line-height:18px; font-size:13px;'>Please check your following details</p>"+
		                                            "<h3 style='font-size:15px; margin:10px 0px 10px 0px; line-height:18px; font-weight:bold; color:#323232;'>Registration Summary</h3>"+
		                                         "</td>"+
		                                    "</tr>"+
		                                    "<tr>"+
		                                    	"<td>"+
		                                           "<table cellpadding='0' cellspacing='0' border='0' width='100%' style='padding:5px 0px;'>"+
		                                            	"<thead>"+
		                                                	"<tr>"+
		                                                    	"<th colspan='2' align='left' style='padding-left:10px; border-bottom:1px solid #b2b2b2; line-height:20px; border: 1px solid #b2b2b2; background-color: #e8e8e8; border-radius: 5px 5px 0px 0px;'>Student Detail</th>"+
		                                                    "</tr>"+
		                                                "</thead>"+
		                                                "<tbody>"+
		                                                
		                                                	"<tr>"+
		                                                    	"<td style='padding:10px 0px 0px 10px; line-height:18px; border-left:1px solid #d2d2d2;' width='80%'>"+
		                                                    		"<td style='color:#0070b8; border-right:1px solid #d2d2d2; text-align:left;'></td>"+
		                                                    	"</td>"+
		                                                    "</tr>"+
															"<tr>"+
															
		                                                  		  	"<td style='padding:0px 0px 3px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>Name</td>"+
		                                                  	
		                                                 	        "<td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+studentname+"</td>"+
		                                                 	   "</tr>"+
		                                                     
																"<tr>"+
		                                                  		  	"<td style='padding:0px 0px 3px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>Email </td>"+
		                                                 	       "<td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+studentemail+"</td>"+
		                                                 	  " </tr>"+
														 		"<tr>"+
		                                                  		  	"<td style='padding:0px 0px 3px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>Contact Number</td>"+
		                                                 	        "<td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+studentmobile+"</td>"+
		                                                 	   "</tr>"+
														 		"<tr>"+
		                                                  		  	"<td style='padding:0px 0px 3px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>College / University</td>"+
		                                                 	       " <td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+studentcollege+"</td>"+
		                                                 	   "</tr>"+
		                                                 	   "<tr>"+
		                                                  		  	"<td style='padding:0px 0px 3px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>Degree</td>"+
		                                                 	        "<td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+studentdegree+"</td>"+
		                                                 	   "</tr>"+
														 	"<tr>"+
		                                                    	"<td style='padding:0px 0px 8px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #f4f4f4;'>"+mode+" Title</td>"+
		                                                        "<td style='padding:0px 10px 3px 0px; color:#0070b8; border-right:1px solid #d2d2d2; text-align:left; border-bottom:1px solid #f4f4f4;'>"+projectcourse+"</td>"+
		                                                    "</tr>"+
		                                                	"<tr>"+
		                                                    	"<td style='padding:0px 0px 8px 10px; line-height:18px; border-left:1px solid #d2d2d2; border-bottom:1px solid #d2d2d2;'>Referrer <font color='#676767'></font></td>"+
		                                                        "<td style='padding-bottom:8px; padding-right:10px; color:#0070b8; border-right:1px solid #d2d2d2; border-bottom:1px solid #d2d2d2; text-align:left;'>"+referal+"</td>"+
		                                                    "</tr>"+
		                                                    
		                                                    
		                                                    
		                                                "</tbody>"+
		                                            "</table>"+
		                                        "</td>"+
		                                    "</tr>"+
		                                   
		                            "</table>"+
		                            "</td>"+
		                          "</tr>"+  
		                    "</table>"+
		                "</td>"+
		            "</tr>"+ 
		            "<tr>"+
		                 "<td colspan='2' background='http://mdautomations.com/bg_bottom.gif' height='26px'></td>"+
		            "</tr>"+
		            "<tr>"+
		                 "<td colspan='2' style='height:10px;'></td>"+
		            "</tr>"+
		              
		              "<tr>"+
		                 "<td colspan='2' background='http://mdautomations.com/img_footer.png' height='76px'><div style='margin-left:260px; color:#434343; font-size:11px;font-family:tahoma;'>#18, Subramaniya Swamy Koil St, Tirupattur, Vellore Dist- 635601. <br/>"+
	"&#169; 2003 MD Automations. All Rights Reserved.</div></td>"+
		              "</tr>"+
		    "</table>"+
		"</div>"+

		"</body>"+
		"</html>";
		return sMail;
	}
	
	@RequestMapping(value="/dataURL",method=RequestMethod.POST)
	public @ResponseBody String search(HttpServletResponse response,HttpServletRequest request,HttpSession session)throws IOException, JSONException
	{
		String status					= "";
		PersistenceManager pm			= null;
		Query queryUserDetails			= null;
		List<Entry> usersInfo			= null;
		try
		{
			pm			= PMF.get().getPersistenceManager();
			HashMap<String, Entry> tableEntry = new HashMap<String,Entry>();
			queryUserDetails					= 	pm.newQuery(Entry.class);
			usersInfo							= 	(List<Entry>) queryUserDetails.execute();
			for(Entry value:usersInfo)
			{
				tableEntry.put(value.getKey().toString(),value);
			}
			status								= new ObjectMapper().writeValueAsString(tableEntry);
		}
		catch(Exception e)
		{
			System.out.println("THE EXCEPTION ARISED IN DATATABLE"+e);
		}
		finally
		{
			//session.invalidate();
		}
		return status;
	}
	@RequestMapping(value="/studentregistration",method=RequestMethod.POST)
	public @ResponseBody String registeration(
			@RequestParam(value="studentname",required=false)String studentname,
			@RequestParam(value="studentemail",required=false)String studentemail,
			@RequestParam(value="studentmobile",required=false)String studentmobile,
			@RequestParam(value="studentcollege",required=false)String studentcollege,
			@RequestParam(value="studentdegree",required=false)String studentdegree,
			@RequestParam(value="projectcourse",required=false)String projectcourse,
			@RequestParam(value="referal",required=false)String referal,
			@RequestParam(value="mode",required=false)String mode,
			@RequestParam(value="date",required=false)String date,
			@RequestParam(value="budget",required=false)String budget,
			HttpServletResponse response,HttpSession session)throws IOException, JSONException
			{
		System.out.println(" studentname  " +studentname);
		System.out.println(" studentemail :: " +studentemail);
		System.out.println(" studentmobile :: " +studentmobile);
		System.out.println(" studentcollege :: " +studentcollege);
		System.out.println(" studentdegree :: " +studentdegree);
		System.out.println(" projectcourse :: " +projectcourse);
		System.out.println(" referal :: " +referal);
		System.out.println(" mode :: " +mode);
		System.out.println(" date :: " +date);
		System.out.println(" budget :: " +budget);
		DateFormat dateFormat   = 	new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		PersistenceManager  pm         = PMF.get().getPersistenceManager();
			 try
				{
				    Entry1 enter =  new Entry1();
					UUID uniqueKey	= UUID.randomUUID();
					
					enter.setkey(uniqueKey.toString());
					enter.setbudget(budget);
					enter.setdate(date);
					enter.setmode(mode);
					enter.setprojectcourse(projectcourse);
					enter.setstudentcollege(studentcollege);
					enter.setstudentemail(studentemail);
					enter.setstudentmobile(studentmobile);
					enter.setstudentname(studentname);
					enter.setreferal(referal);
					enter.setstudentdegree(studentdegree);
					pm.currentTransaction().begin();
					pm.makePersistent(enter);
					pm.currentTransaction().commit();
					if(mode.equalsIgnoreCase("projectchoice"))
					{
						mode = "Project";
					}
					else if(mode.equalsIgnoreCase("coursechoice"))
					{
						mode = "Course";
					}
					
					String sClientMail = getMailBody(studentname,studentemail,mode,studentmobile,studentcollege,studentdegree,projectcourse,referal);
					System.out.println("mail is this::"+sClientMail);
					EmailUtil.sendMailToClient(sClientMail,studentemail);
				}
				catch(Exception e)
				{
					e.getStackTrace();
					System.out.println("the exception is this :: "+e);
					return "failure";
				}
			 	finally
				{
					pm.close();
				}
				return "success";
		 }
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public @ResponseBody String login(
			@RequestParam(value="email",required=false)String email,
			@RequestParam(value="password",required=false)String password,
			HttpServletResponse response,HttpSession session)throws IOException, JSONException
			{
				System.out.println("the visit comes here");
				PersistenceManager  pm         = PMF.get().getPersistenceManager();
				Entry1 enter =  new Entry1();
				System.out.println("usernsame is this:: "+email);
				System.out.println("password is this:: "+password);
				Query queryUserDetails1 =	pm.newQuery(Entry1.class," email == '"+email+"' && password == '"+password+"'");
				  List<Entry1> usersInfo1 = (List<Entry1>)queryUserDetails1.execute();
				  System.out.println("list count is :: "+usersInfo1.size());
				  if(usersInfo1.size()!=0)
				  {
					  return "success";
				  }
				  else
				  {
					  return "failure";
				  }
			}
	@RequestMapping(value="/feedback",method=RequestMethod.POST)
	public @ResponseBody String feedback(@RequestParam(value="responseboxHTML",required=false)String responses,@RequestParam(value="tree_contents",required=false)String paramds,@RequestParam(value="studentemail",required=false)String studentemail,@RequestParam(value="studentname",required=false)String studentname,@RequestParam(value="sendresponse",required=false)String sendresponse,HttpServletRequest request,HttpServletResponse response,HttpSession session)throws IOException, JSONException
			{
//				System.out.println("parameter is this ::"+paramds);
				System.out.println("studentname is this ::"+studentname);
				System.out.println("studentemail is this ::"+studentemail);
				System.out.println("sendresponse is this ::"+sendresponse);
				
				String Str = paramds.replace('\"', '\'');
//				String sMail = "<!DOCTYPE html>"+
//				"<html lang='en'>"+
//				    "<body >"+
//				    "<img src='http://mdautomations.com/MDLOGO.png' width='246' height='90' border='0' alt='MD Automations' /></a>"+
//				    Str+
//				    "</body>"+
//				    "</html>";
//				log.info("sMail is"+sMail);
//				if(sendresponse=="true")
//				{
//					EmailUtil.sendFeedbackMail(sMail,studentemail,studentname);
//				}
//				else
//				{
//					EmailUtil.sendFeedbackMail(sMail,"",studentname);
//				}
				String sMail=	"<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"+
				"<html xmlns='http://www.w3.org/1999/xhtml'>"+
				"<head>"+
				"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
				"<title>MD Automations Client Receipt</title>"+
				"</head>"+

				"<body bgcolor='#f5f6f7'>"+
				"<div  style='background-color:#f5f6f7; width:750px;' >"+
				"<div style='background-color: #000000;background-repeat:repeat-x; height:0px;'>&nbsp;</div>"+
					"<table width='650px' cellpadding='0' cellspacing='0' border='0' style='margin:30px auto;'>"+
				      "<tr>"+
				            "<td width='300px'>"+
				                "<a href='www.mdautomations.com'><img src='http://mdautomations.com/MDLOGO.png' width='246' height='90' border='0' alt='MD Automations' /></a>"+
				            "</td>"+
				       "</tr>"+
				       "<tr>"+
				       		"<td height='10px'></td>"+
				       "</tr>"+
				        "<tr>"+
							"<td colspan='3'>"+
							"<h3 style='background:url(http://mdautomations.com/bg.png) #2080bc no-repeat 0px; border-radius:10px 10px 0px 0px; width:626px; min-height:71px; padding:40px 0 0 25px; margin:0px 1px; font-family:helvetica;color:#ffffff; font-size:23px;'>Thanks for your valuable feedback!</h3>"+
							"</td>"+
						"</tr>"+
				           Str+responses+
				           "<table width='650px' cellpadding='0' cellspacing='0' border='0' style='margin:30px auto;'>"+
				            "<tr>"+
				                 "<td colspan='2' background='http://mdautomations.com/bg_bottom.gif' height='26px'></td>"+
				            "</tr>"+
				            "<tr>"+
				                 "<td colspan='2' style='height:10px;'></td>"+
				            "</tr>"+
				              
				              "<tr>"+
				                 "<td colspan='2' background='http://mdautomations.com/img_footer.png' height='76px'><div style='margin-left:260px; color:#434343; font-size:11px;font-family:tahoma;'>#18, Subramaniya Swamy Koil St, Tirupattur, Vellore Dist- 635601. <br/>"+
			"&#169; 2003 MD Automations. All Rights Reserved.</div></td>"+
				              "</tr>"+
				    "</table>"+
				"</div>"+

				"</body>"+
				"</html>";
				log.info("sMail is"+sMail);
				log.info("sendresponse is"+sendresponse);
				if(sendresponse.equalsIgnoreCase("true"))
					{
						System.out.println("hello");
					 	EmailUtil.sendFeedbackMail(sMail,studentemail,studentname);
					}
					else
					{
						System.out.println("hello1");
						EmailUtil.sendFeedbackMail(sMail,"",studentname);
					}
				return paramds;
				
			}
	@RequestMapping(value="/feedbackmsg",method=RequestMethod.POST)
	public @ResponseBody String feedback(@RequestParam(value="name",required=false)String name,@RequestParam(value="email",required=false)String email,@RequestParam(value="phone",required=false)String number,@RequestParam(value="message",required=false)String message,HttpServletRequest request,HttpServletResponse response,HttpSession session)throws IOException, JSONException
			{
//				System.out.println("parameter is this ::"+paramds);
				System.out.println("studentname is this ::"+name);
				System.out.println("studentemail is this ::"+email);
				System.out.println("sendresponse is this ::"+number);
				System.out.println("sendresponse is this ::"+message);
				
				String sMail= "Name :: "+name+"Email :: "+email+"Phone :: "+number+"message :: "+message;
			
			
					 	sendmsgbackMail(sMail,"sathya@mdautomations.com",name);
					 	
					 	System.out.println("mails ent is this ::"+message);
					
				return null;
				
			}
	public static void sendmsgbackMail(String sMessage,String sEmail,String sName) throws UnsupportedEncodingException

	{

	Properties props = new Properties();
	Session session = Session.getDefaultInstance(props, null);
	Message msg = new MimeMessage(session);
	try
	{
		msg.setFrom(new InternetAddress("sathya@mdautomations.com","MD AUTOMATIONS")); 
		if(sEmail.length()!=0)
		{
			msg.addRecipient(Message.RecipientType.BCC, new InternetAddress("team@mdautomations.com","MD AUTOMATIONS"));
			msg.addRecipient( Message.RecipientType.TO , new InternetAddress(sEmail,"MD AUTOMATIONS" ));
		}
		else
		{
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress("team@mdautomations.com","MD AUTOMATIONS"));
		}
			msg.setReplyTo(InternetAddress.parse("sathya@mdautomations.com"));  
	        msg.setSubject("Feedback from "+sName);
	        msg.setContent(sMessage, "text/html");
	        Transport.send(msg);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
