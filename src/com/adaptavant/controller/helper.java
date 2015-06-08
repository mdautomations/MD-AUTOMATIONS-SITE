package com.adaptavant.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




//import com.adaptavant.service.GoogleStorageService;
import com.adaptavant.dto.MultiPartFileUpload;
import com.adaptavant.dto.photoMultiPartFileUpload;
import com.adaptavant.service.AdaptavantRegisterService;
import com.adaptavant.util.CommonUtils;
import com.adaptavant.util.EmailUtil;
import com.adaptavant.util.ModeUtil;
import com.google.appengine.api.utils.SystemProperty;
import com.adaptavant.controller.Entry;
import com.adaptavant.controller.PMF;
//import com.google.appengine.api.datastore.Blob;
@Controller
public class helper {
	
	public String registertoDB(HashMap<String, String> brodwerDetails,String sName,String sEmail,String sPhone,String sReferrer,String sMessage)
	{
		DateFormat dateFormat   = 	new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date datetoday   = new Date();
		PersistenceManager  pm         = PMF.get().getPersistenceManager();
			 try
				{
				    Entry enter =  new Entry();
					UUID uniqueKey	= UUID.randomUUID();
					enter.setemail(sEmail);
					enter.setname(sName);
					enter.setphone(sPhone);
					enter.setDate(datetoday);
					enter.setreferrer(sReferrer);
					enter.setmessage(sMessage);
					enter.setKey(uniqueKey.toString());
					pm.currentTransaction().begin();
					pm.makePersistent(enter);
					pm.currentTransaction().commit();
				}
				catch(Exception e)
				{
					e.getStackTrace();
					System.out.println("the exception is this :: "+e);
					return "FAILED";
				}
			 	finally
				{
					pm.close();
				}
			return "SUCCESS";
	}
	
	
}
