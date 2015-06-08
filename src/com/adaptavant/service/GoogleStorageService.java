//package com.adaptavant.service;
//
//import java.io.StringWriter;
//import java.io.Writer;
//import java.nio.charset.Charset;
//import java.util.HashMap;
//import java.util.UUID;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//import javax.servlet.ServletInputStream;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.codehaus.jackson.map.ObjectMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.client.RestTemplate;
//
//import com.adaptavant.util.CommonUtils;
//import com.adaptavant.service.GoogleStorageUtil;
//import com.adaptavant.util.ModeUtil;
//
//
//public class GoogleStorageService
//{
//	private static final Logger log 			= 	Logger.getLogger(GoogleStorageService.class.getName());
//	private final String contenttype 			= 	"image/png" ;
//	
//	
//	@Autowired
//	protected RestTemplate restTemplate = new RestTemplate();
//	
////	public String uploadImage( byte[] content , String sumdomain , String pAccountNumber ,String pUniquepin,String oldFileNameAndFormat , int height ,HttpSession session)
////	{
////		log.info("Inside uploadImage. The file is to be named : "+pAccountNumber+" and the content is : "+content);
////		GoogleStorageUtil lUtil				=	GoogleStorageUtil.getInstance();
////		String result						=	null	;
////		HashMap<String,String> lResponseMap =	new HashMap<String,String>(); 
////		try
////		{
////			String newFileName				=	pAccountNumber+".png" ;
////			
////			//Get bucket based on mode . Resize original image , choose appropriate file name and upload image to destination
////			ModeUtil modeutilobj 				= 	new ModeUtil();
////			String	bucketName					=	modeutilobj.getBrandingBucketName();
////			if( height == -1 )	//Resizing the image if height is == -1 in  other words , if external height is not passed
////			{
////				content	=	lUtil.resizeImage( content , 60 );
////			}
////			else
////			{
////				content	=	lUtil.resizeImage( content , height );
////			}
////			log.info("content : "+content);
////			result	=	lUtil.upload( bucketName , newFileName , contenttype , content );
////			log.info("Image has been uploaded and the image path is : "+result);
////			
////			//Update pgadmin from here with the image path
////			//this.updatePathInDb( option, result , parameter,session );
////			String lReturnString			=	 new SettingsHelperNew().updateLogopath(result,pUniquepin,pAccountNumber,sumdomain);
////			log.info("lReturnString ::"+lReturnString);
////			if(lReturnString != null && "Success".equalsIgnoreCase(lReturnString))
////			{
////				lResponseMap.put( "uploadflag" , "successfully uploaded logo" ); 
////				lResponseMap.put( "logouploadurl" , result);
////				session.removeAttribute("logo");
////				session.setAttribute( "logo", result );
////				String sbClearCache	=	new LoginHelper().clearSbCache(pAccountNumber);
////				log.info("sbClearCache Response : "+sbClearCache);
////			}
////			else
////			{
////				lResponseMap.put( "uploadflag" , "failure" );
////			}
////			
////		}
////		catch (Exception e)
////		{
////			e.printStackTrace();
////			log.log(java.util.logging.Level.SEVERE,e.getMessage(),e);
////			log.severe("Exception while trying to upload image : "+e.getMessage());
////		}
////		return new CommonUtilities().convertObjectToString(lResponseMap) ;
////	}
//	public String uploadImage( byte[] content , String sumdomain , String pAccountNumber ,String pUniquepin,String oldFileNameAndFormat , int height )
//	{
//		log.info("Inside uploadImage. The file is to be named : "+pAccountNumber+" and the content is : "+content);
//		GoogleStorageUtil lUtil				=	GoogleStorageUtil.getInstance();
//		String result						=	null	;
//		HashMap<String,String> lResponseMap =	new HashMap<String,String>(); 
//		try
//		{
//			String newPin 					= UUID.randomUUID().toString();
//			String newFileName				=	newPin+".png" ;
//			
//			//Get bucket based on mode . Resize original image , choose appropriate file name and upload image to destination
//			ModeUtil modeutilobj 				= 	new ModeUtil();
//			String	bucketName					=	modeutilobj.getBrandingBucketName();
//			if( height == -1 )	//Resizing the image if height is == -1 in  other words , if external height is not passed
//			{
//				content	=	lUtil.resizeImage( content , 120 );
//			}
//			else
//			{
//				content	=	lUtil.resizeImage( content , height );
//			}
//			log.info("content : "+content);
//			result	=	lUtil.upload( bucketName , newFileName , contenttype , content );
//			log.info("Image has been uploaded and the image path is : "+result);
//			
//			if(result != null)
//			{
//				lResponseMap.put( "uploadflag" , "successfully uploaded logo" ); 
//				lResponseMap.put( "photouploadURL" , result);
//			}
//			else
//			{
//				lResponseMap.put( "uploadflag" , "failure" );
//			}
//			
//		}
//		catch (Exception e)
//		{
//			e.printStackTrace();
//			log.log(java.util.logging.Level.SEVERE,e.getMessage(),e);
//			log.severe("Exception while trying to upload image : "+e.getMessage());
//		}
//		return convertObjectToString(lResponseMap) ;
//	}
//	public HashMap<String, Object> convertFileToByteArray( HttpServletRequest request ) 
//	{
//		byte[] line 			= null;
//		byte[] image 			= null;
//		int noOfBytesRead;
//		String contentType 		= "";
//		StringBuffer content 	= new StringBuffer();
//		
//		HashMap<String, Object> lResultMap	=	null ;
//
//		try 
//		{
//			ServletInputStream sis 	= request.getInputStream();
//			System.out.println("sis is this :: "+sis);
//			line 					= new byte[128];
//			noOfBytesRead 			= sis.readLine(line, 0, 128);
//			System.out.println("noOfBytesRead is this :: "+noOfBytesRead);
//
//			if (noOfBytesRead < 3)
//				return null;
//
//			noOfBytesRead 			= sis.readLine(line, 0, 128); // Reads the content disposition and form name and filename
//			log.info("line :"+line+" adn the noOfBytesRead :"+noOfBytesRead);
//			String oldFileName 		= new String(line, 0, noOfBytesRead);
//			String fileExtension 	= oldFileName.substring(oldFileName.indexOf("."), oldFileName.length() - 3);
//			log.info("The filename and file extension is : "+oldFileName+" & "+fileExtension);
//			
//			noOfBytesRead 			= sis.readLine(line, 0, 128); // reads the content type
//			contentType 			= new String(line, 0, noOfBytesRead);
//			contentType 			= contentType.substring(14, contentType.indexOf("\r"));
//			noOfBytesRead 			= sis.readLine(line, 0, 128);
//			int numBytesToRead 		= 1024;
//			int availableBytesToRead;
//			while ((availableBytesToRead = sis.available()) > 0) 
//			{
//				byte[] bufferBytesRead;
//				bufferBytesRead = availableBytesToRead >= numBytesToRead ? new byte[numBytesToRead] : new byte[availableBytesToRead];
//				sis.read(bufferBytesRead);
//				content.append(new String(bufferBytesRead, Charset.forName("iso-8859-1")));
//			}
//			sis.close();
//			
//			image	=	content.toString().getBytes(Charset.forName("iso-8859-1")) ;
//			
//			lResultMap	=	new HashMap<String, Object>();
//			lResultMap.put("content"	, image );
//			lResultMap.put("filename"	, oldFileName+fileExtension );
//		} 
//		catch (Exception e) 
//		{
//			e.printStackTrace();
//			log.log(Level.SEVERE, e.getMessage(), e);
//		}
//
//		return lResultMap ;
//	}
//	public String convertObjectToString(Object object)
//	{
//		log.info("Inside convertObjectToString method");
//		String jsonString = " ";
//		try
//		{
//			if (object == null)
//			{
//				return "Object is empty";
//			}
//			else
//			{
//				ObjectMapper mapper = new ObjectMapper();
//				Writer strWriter = new StringWriter();
//				mapper.writeValue(strWriter, object);
//				jsonString = strWriter.toString();
//			}
//			log.info("The photomap going to be retuned is this ::"+jsonString);
//			return jsonString;
//		}
//		catch (Exception e)
//		{
//			e.printStackTrace();
//			log.info("Exception while trying to convert object to string!: "
//					+ e.getMessage());
//			return jsonString;
//		}
//
//	}
//}
