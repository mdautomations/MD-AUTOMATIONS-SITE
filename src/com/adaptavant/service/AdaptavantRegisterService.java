package com.adaptavant.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;

import com.adaptavant.util.CommonUtils;
import com.adaptavant.util.EmailUtil;
import com.adaptavant.util.ModeUtil;
import com.google.appengine.api.utils.SystemProperty;

public class AdaptavantRegisterService {
	private static final Logger log = Logger.getLogger(AdaptavantRegisterService.class.getName());
	/**
	 * This method sends uniquepin and phone num to ar-submitter
	 * @param pPhone
	 * @param pUniquePin
	 * @param accountnumber
	 * @return
	 */
	public static void sendARrequestOnRegistration(String pPhone,String pUniquePin,String accountnumber)
	{
//		String status = null;
//		try
//		{ 
//			log.info("Called activeResponseCall tile method inside sendDataToAR");
//			String sARid = accountnumber;
//			log.info("Phone-" + pPhone);
//			log.info("uniquepin-" + pUniquePin);
//			log.info("AcountNumber:"+sARid);
//			ResourceBundle rb = ResourceBundle.getBundle( "ApplicationResources" );
//			String sARurl="http://staging-arsubmitter.appspot.com";//,sARid="4004618535";  //2005456964,3005456964
//			String sMode = new ModeUtil().getMode();
//			
//			try
//			{
//				if(sMode.equalsIgnoreCase("LIVE"))
//				{
//					sARurl = rb.getString("live.new.ar.url").trim();
//					log.info("Mode is Live");
//				}
//				else if(sMode.equalsIgnoreCase("STAGING"))
//				{
//					sARurl = rb.getString("staging.new.ar.url").trim();
//					log.info("Mode is Staging");
//				}
//				else
//				{
//					sARurl = rb.getString("staging.new.ar.url").trim();
//					log.info("Mode is Non-Live");
//				}
//			}
//			catch(Exception e)
//			{
//				log.log(java.util.logging.Level.SEVERE, e.getMessage(), e);			
//			}
//			
//			ActiveResponseSubmitter arSubmitter = new ActiveResponseSubmitter(sARid,sARurl);
//			log.info("AR Parameters used : sARid-"+sARid+", sARurl-"+sARurl );
//			
//			ArrayList<LabelValuePair> labelValuePairs = new ArrayList<LabelValuePair>();
//			labelValuePairs.add(new LabelValuePair("UniquePin",pUniquePin));
//			labelValuePairs.add(new LabelValuePair("Phone", pPhone));
//		    status = arSubmitter.sendHttpPostNew(labelValuePairs);
//			log.info("AR status ::::::::" + Boolean.valueOf(status));
//			log.info("labelValuePairs ::::::::" + labelValuePairs);
//			if(!Boolean.valueOf(status))
//			{
//				log.info("AR FAILED");
//				String message = "<b>ACTIVE RESPONSE FAILED ! <br>ProjectName:	ADAPTAVANT<br>AppID:	"+ SystemProperty.applicationId.get()+"<br> Requested Service : </b>"+new ModeUtil().activeResponseURL()+"<br> <b>Details : </b>"+labelValuePairs;
//	            EmailUtil.sendStatusMail("Active Response Failed",message,"ar");
//			}
//		}
//		catch(Exception e)
//		{
//			log.log(java.util.logging.Level.SEVERE, e.getMessage(), e);			
//		}
//		return status;
	}

	
	/**
	 * Makes DB Entry of the Registration, and make AR request
	 * 
	 * @param pContactJson
	 * @param phone
	 * @return
	 */
	public static void register( String accountPin,String pContactJson , String phone , String sAccountNumber )
	{
//		ObjectMapper objectMapper 			= 		new ObjectMapper();
//		String 		urlString 				= 		"";
//		String 		response 				= 		"";
//		URL 		url 					= 		null;
//		Map 		result 					=		new HashMap();
//		HashMap 	registrationStatus 		= 		new HashMap();
//		HttpURLConnection connection 		= 		null;
//		OutputStreamWriter writer 			= 		null;
//		BufferedReader reader 				= 		null;
//		HttpSession	session = null;
//		boolean 	status = false;
//
//		try
//			{
//				urlString = new ModeUtil().getCMSUrl();
//				log.info("urlString : " + urlString);
//				url = new URL( urlString );
//				connection = (HttpURLConnection) url.openConnection();
//				connection.setConnectTimeout( 15000 );
//				connection.setReadTimeout( 15000 );
//				connection.setDoInput( true );
//				connection.setDoOutput( true );
//				connection.setRequestMethod( "POST" );
//				connection.setRequestProperty( "Content-Type" , "application/json" );
//				
//				if(urlString.contains("appspot"))
//				{
//					connection.setInstanceFollowRedirects(false);
//				}
//				else
//				{
//					connection.setInstanceFollowRedirects(true);
//				}
//				writer = new OutputStreamWriter( connection.getOutputStream() );
//				writer.write( pContactJson );
//				writer.close();
//
//				reader = new BufferedReader( new InputStreamReader( connection.getInputStream() ) );
//				response = reader.readLine();
//				log.info("response:"+response);
//				result = objectMapper.readValue( response , HashMap.class );
//				log.info("response from cms:::::"+response);
//				status = (Boolean) result.get( "success" );
//				log.info("Status form CMS==>"+status);
//				if ( status )
//				{
//						registrationStatus.put("registration", "success");
//						ObjectMapper mapper = new ObjectMapper();
//						JsonNode jsonCRMresponse 		=	mapper.readValue( response , JsonNode.class );
//						//String sUniquePin = jsonCRMresponse.findPath( "ID" ).getTextValue();
//						HashMap contactMap 				= 	mapper.readValue( response , HashMap.class );
//						ArrayList<HashMap> contactArray 			= 	(ArrayList<HashMap>)contactMap.get("contact");
//						log.info( "personArray::: " + contactArray );
//						HashMap		personMap			=	null;
//						
//						for (HashMap categoryMap : contactArray) 
//						{
//							if("person".equalsIgnoreCase((String)categoryMap.get("category"))){
//								personMap	=		categoryMap;
//							}
//						}
//						
//						log.info( "personMap::: " + personMap );
//						String contactID = (String)personMap.get("id");
//						log.info( "contactID========>::: " + contactID );
//						log.info( "sUniquePin: " + contactID );
//						registrationStatus.put("contactID", contactID);
//				}
//				else
//				{
//						registrationStatus.put("registration", "failed");
//						registrationStatus.put("contactID", "false");
//				}
//			}
//		catch ( Exception ex )
//			{
//				log.log( java.util.logging.Level.SEVERE , "\n pContactJson: " + pContactJson + "\n" , ex );
//				registrationStatus.put("registration", "failed");
//				registrationStatus.put("contactID", "failed");
//			}
//				log.info("REGISTRATION STATUS FROM CMS:: "+registrationStatus);
//		return registrationStatus;
	}
	public void callARAPI(String phone,String contactID) 
	{
//		String						sARurl			=	"";
//		String						sARid			=	"";
//		String 						urlString 		= 	"";
//		String 						responseJson 	= 	"";
//		String 						rquestJson		=	"";
//		HashMap<String,String>		arMap			=	null;
//		ObjectMapper 				objectMapper	=	null;
//		URL 						url 			= 	null;
//		HttpURLConnection 			connection 		= 	null;
//		BufferedReader 				reader 			= 	null;
//		OutputStreamWriter 			writer 			= 	null;
//    	try
//    	{ 
//    		arMap			=	new HashMap<String,String>();
//    		objectMapper	= 	new ObjectMapper();
//    		
//    		log.info("Phone-" + phone);
//    		log.info("contactID-" + contactID);
//    		
//    		
//    		if ( contactID != null && !contactID.isEmpty() && !phone.isEmpty() && phone != null) 
//			{
//				objectMapper	= 	new ObjectMapper();
//				arMap			=	new HashMap< String, String>();
//				
//				sARid			=	new ModeUtil().getArID();
//				log.info("ActiveResponse ID  "+sARid);
//				
//				urlString		= 	new ModeUtil().activeResponseURL();
//				log.info("ActiveResponse URL  "+urlString);
//				
//				arMap.put("accountnumber", sARid);
//				arMap.put("contactID", contactID);
//				arMap.put("phone", phone);
//				log.info("ARMap "+arMap);
//				
//				rquestJson		=	objectMapper.writeValueAsString(arMap);
//				log.info("json data to send ActiveResponse::"+rquestJson);
//				
//				url = new URL( urlString );
//				connection = (HttpURLConnection) url.openConnection();
//				connection.setConnectTimeout( 60000 );
//				connection.setReadTimeout( 60000 );
//				connection.setDoInput( true );
//				connection.setDoOutput( true );
//				connection.setRequestMethod( "POST" );
//				connection.setRequestProperty( "Content-Type" , "application/json" );
//				
//				if(urlString.contains("appspot"))
//				{
//					connection.setInstanceFollowRedirects(false);
//				}
//				else
//				{
//					connection.setInstanceFollowRedirects(true);
//				}
//
//				writer = new OutputStreamWriter( connection.getOutputStream() );
//				writer.write(rquestJson);
//				writer.close();
//				reader = new BufferedReader(new InputStreamReader( connection.getInputStream()));
//				responseJson = reader.readLine();
//
//				log.info("response from Activeresponse:::::"+responseJson);
//				if (!("success".equalsIgnoreCase(responseJson))) 
//				{
//					log.info("inside active response sending error maill");
//					String messagebody = "ProjectName:	Adaptavant>AppID:	"+ SystemProperty.applicationId.get()+"<br>Mode:	"+ new ModeUtil().getMode()+"<br>Service: " +new ModeUtil().activeResponseURL()+"<br>ETTID: " +new ModeUtil().getArID()+"<br>ContactID:	"+ contactID+"<br>Phone:	"+ phone+"<br>AccountNumber"+sARid+"<br>Response:"+responseJson.toString();
//					//EmailUtil.sendGeneralPorposeMail("Exception while triggering ActiveResponse",messagebody,"ar");
//				}
//			}
//			else 
//			{
//				String messagebody = "ProjectName:	Adaptavant<br>AppID:	"+ SystemProperty.applicationId.get()+"<br>Mode:	"+ new ModeUtil().getMode()+"<br>ContactID:	"+ contactID+"<br>Phone:	"+ phone;
//				//CommonUtils.sendGeneralPorposeMail("Exception while triggering ActiveResponse",messagebody,"ar");
//				
//			}
    	}
//    	catch (Exception e) 
//    	{
//    		log.log(Level.SEVERE,"Exception message"+e.getMessage(),e);
//		}
//		return responseJson;
	}		
	
