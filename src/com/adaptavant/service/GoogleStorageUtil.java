//package com.adaptavant.service;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URISyntaxException;
//import java.nio.charset.Charset;
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.TimeZone;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.ServletInputStream;
//import javax.servlet.http.HttpServletRequest;
//import com.google.api.client.http.GenericUrl;
//import com.google.api.client.http.HttpRequest;
//import com.google.api.client.http.HttpResponse;
//import com.google.api.client.http.HttpTransport;
//import com.google.api.client.http.InputStreamContent;
//import com.google.api.client.http.javanet.NetHttpTransport;
//import com.google.appengine.api.images.Image;
//import com.google.appengine.api.images.ImagesService;
//import com.google.appengine.api.images.ImagesServiceFactory;
//import com.google.appengine.api.images.OutputSettings;
//import com.google.appengine.api.images.Transform;
//import com.adaptavant.util.*;
///**
// * 
// * @author varun custom class to make use of the google storage rest api's
// * 
// */
//public class GoogleStorageUtil
//{
//
//	private static GoogleStorageUtil	_instance			= null;
//	private final Logger				mLogger				= Logger.getLogger(GoogleStorageUtil.class
//																	.getName());
//	private final SimpleDateFormat		simpleDateFormat	= new SimpleDateFormat(
//																	"E',' dd MMM yyyy HH:mm:ss 'GMT'");
//	private final Charset				charset				= Charset
//																	.forName("iso-8859-1");
//
//	private GoogleStorageUtil()
//	{
//
//	}
//
////	private String getCurrentDateGMT()
////	{
////		Calendar cal = Calendar.getInstance();
////		cal.set(Calendar.HOUR_OF_DAY, Calendar.getInstance(TimeZone.getTimeZone("GMT"))
////				.get(Calendar.HOUR_OF_DAY));
////		return simpleDateFormat.format(cal.getTime());
////
////	}
//
//	public static GoogleStorageUtil getInstance()
//	{
//		if (_instance == null)
//		{
//			synchronized (GoogleStorageUtil.class)
//			{
//				if (_instance == null)
//					_instance = new GoogleStorageUtil();
//			}
//		}
//		return _instance;
//	}
//
//	/**
//	 * @param bucketName
//	 *            - if name is given will list the contents of the bucket, else
//	 *            list all buckets
//	 * @return String - Xml returned by google
//	 * @throws URISyntaxException
//	 */
////	public String listAllBuckets(String bucketName) throws URISyntaxException
////	{
////
////		HttpTransport transport = new NetHttpTransport();
////		GoogleStorageAuth.authorize(transport, Constants.GOOGLESTORAGE_ACCESSKEY,
////				Constants.GOOGLESTORAGE_SECRET);
////		HttpRequest request = transport.buildGetRequest();
////		request.url = new GenericUrl("http://commondatastorage.googleapis.com");
////		request.headers.put("Content-Length", "0");
////		request.headers.put("Date", getCurrentDateGMT());
////		if (!bucketName.equalsIgnoreCase(""))
////			request.url.host = bucketName + ".commondatastorage.googleapis.com";
////		HttpResponse response = null;
////		BufferedReader br = null;
////		StringBuffer responseString = new StringBuffer();
////		try
////		{
////			response = request.execute();
////			br = new BufferedReader(new InputStreamReader(response.getContent()));
////			String tmp;
////			while ((tmp = br.readLine()) != null)
////			{
////				responseString.append(tmp);
////			}
////			mLogger.info(responseString.toString());
////		}
////		catch (IOException e)
////		{
////			e.printStackTrace();
////		}
////		return responseString.toString();
////	}
//
//	public String upload(String bucketName, String fileName, String contentType,
//			byte [] content)
//	{
//		HttpTransport transport = new NetHttpTransport();
//		GoogleStorageAuth.authorize(transport, Constants.GOOGLESTORAGE_ACCESSKEY,Constants.GOOGLESTORAGE_SECRET);
//		InputStreamContent inputStreamContent = new InputStreamContent();
//		inputStreamContent.setByteArrayInput(content);
//		inputStreamContent.type = contentType + "; charset=" + charset.displayName();
//
//		HttpRequest request = transport.buildPutRequest();
//		request.content = inputStreamContent;
//
//		String fileUploadPath = "http://commondatastorage.googleapis.com/" + fileName;
//		request.url = new GenericUrl(fileUploadPath);
//		request.headers.put("Date", getCurrentDateGMT());
//		request.headers.put("Accept", "*/*");
//		request.headers.put("x-goog-acl", "public-read");
//
//		request.headers.put("Cache-Control", "private, max-age=0");
//
//		if (!bucketName.equalsIgnoreCase(""))
//			request.url.host = bucketName + ".commondatastorage.googleapis.com";
//
//		mLogger.info("uploading file: " + fileUploadPath);
//		HttpResponse response = null;
//		BufferedReader br = null;
//		StringBuffer responseString = new StringBuffer();
//
//		try
//		{
//			response = request.execute();
//			mLogger.info("uploaded file: successful to  " + fileName);
//			br = new BufferedReader(new InputStreamReader(response.getContent()));
//			while (br.readLine() != null)
//			{
//				mLogger.info("Data :" + br.readLine());
//				responseString.append(br.readLine());
//			}
//			br.close();
//		}
//		catch (IOException e)
//		{
//			e.printStackTrace();
//		}
//		catch (Exception e)
//		{
//			e.printStackTrace();
//		}
//
//		// return responseString.toString();
//		return ("https://commondatastorage.googleapis.com/" + bucketName + "/" + fileName);
//	}
//	private String getCurrentDateGMT()
//	{
//		Calendar cal = Calendar.getInstance();
//		cal.set(Calendar.HOUR_OF_DAY, Calendar.getInstance(TimeZone.getTimeZone("GMT"))
//				.get(Calendar.HOUR_OF_DAY));
//		return simpleDateFormat.format(cal.getTime());
//
//	}
//	public byte [] resizeImage(byte [] oldImageData, int height)
//	{
//		Image newImage = null;
//		try
//		{
//			final int width;
//			ImagesService imagesService = ImagesServiceFactory.getImagesService();
//			Image oldImage = ImagesServiceFactory.makeImage(oldImageData);
//			mLogger.info("old image is :: "+oldImage+ "::" +oldImageData);
//			width = oldImage.getWidth() * height / oldImage.getHeight();
//			mLogger.info("width : " +width);
//			Transform resize = ImagesServiceFactory.makeResize(width, height);
//			mLogger.info("new image transform is :: "+resize);
//			OutputSettings os 	= new OutputSettings(ImagesService.OutputEncoding.PNG);
//			newImage 			= imagesService.applyTransform(resize, oldImage,os);
//			 mLogger.info("resizeImage : New image is :: " + newImage);
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		return newImage.getImageData();
//	}
//
////	public String uploadObject(HttpServletRequest request, String bucketName,
////			String newFileName)
////	{
////		return this.uploadObject(request, bucketName, newFileName, 0);
////	}
////
////	public String uploadObject(HttpServletRequest request, String bucketName,
////			String newFileName, int height)
////	{
////		mLogger.info("bucketName :" + bucketName + "newFileName :" + newFileName);
////		byte [] line = null;
////		int noOfBytesRead;
////		String contentType = "";
////		StringBuffer content = new StringBuffer();
////		try
////		{
////			ServletInputStream sis = request.getInputStream();
////			line = new byte[128];
////			mLogger.info("The line is  :  " + line);
////			noOfBytesRead = sis.readLine(line, 0, 128); // reads the boundry if
////			// it exists
////			// sString boundry=new String(line,0,noOfBytesRead);
////
////			if (noOfBytesRead < 3)
////				return "";
////
////			noOfBytesRead = sis.readLine(line, 0, 128); // Reads the content
////														// disposition and form
////														// name and filename
////
////			mLogger.info("line :" + line + "noOfBytesRead :" + noOfBytesRead);
////			String oldFileName = new String(line, 0, noOfBytesRead);
////			String fileExtension = oldFileName.substring(oldFileName.indexOf("."),
////					oldFileName.length() - 3);
////
////			newFileName = newFileName + fileExtension;
////			mLogger.info("******The file extension is : " + fileExtension
////					+ "***********:newFileName:" + newFileName);
////			noOfBytesRead = sis.readLine(line, 0, 128); // reads the content
////			// type
////			contentType = new String(line, 0, noOfBytesRead);
////			contentType = contentType.substring(14, contentType.indexOf("\r"));
////			noOfBytesRead = sis.readLine(line, 0, 128);
////			int numBytesToRead = 1024;
////			int availableBytesToRead;
////			while ((availableBytesToRead = sis.available()) > 0)
////			{
////				byte [] bufferBytesRead;
////				bufferBytesRead = availableBytesToRead >= numBytesToRead ? new byte[numBytesToRead]
////						: new byte[availableBytesToRead];
////				sis.read(bufferBytesRead);
////				content.append(new String(bufferBytesRead, charset));
////			}
////			sis.close();
////			// upload(bucketName, newFileName, contentType,
////			// content.toString().substring(0,
////			// content.length()-boundry.length()-4));
////			byte [] uploadImage;
////
////			if (height != 0)
////				uploadImage = resizeImage(content.toString().getBytes(charset),
////						height);
////			else
////				uploadImage = content.toString().getBytes(charset);
////
////			// upload(bucketName, newFileName, contentType, uploadImage);
////			upload(bucketName, newFileName, "image/png", uploadImage);
////
////		}
////		catch (Exception e)
////		{
////			mLogger.log(Level.SEVERE, e.getMessage(), e);
////		}
////		return newFileName;
////	}
////
////	public String deleteObject(String bucketName, String fileName)
////	{
////		try
////		{
////			mLogger.info("inside deleteObject method ! bucketname:" + bucketName
////					+ ":********fileName********:" + fileName);
////			HttpTransport transport = new NetHttpTransport();
////			GoogleStorageAuth.authorize(transport, Constants.GOOGLESTORAGE_ACCESSKEY,
////					Constants.GOOGLESTORAGE_SECRET);
////			HttpRequest request = transport.buildDeleteRequest();
////			String fileUploadPath = "http://commondatastorage.googleapis.com/" + fileName;
////			request.url = new GenericUrl(fileUploadPath);
////			request.headers.put("Date", getCurrentDateGMT());
////			request.headers.put("Accept", "*/*");
////			// request.headers.put("x-goog-acl","public-read");
////			if (!bucketName.equalsIgnoreCase(""))
////				request.url.host = bucketName + ".commondatastorage.googleapis.com";
////
////			mLogger.info("uploading file: " + fileUploadPath);
////			HttpResponse response = null;
////			BufferedReader br = null;
////			StringBuffer responseString = new StringBuffer();
////			try
////			{
////				response = request.execute();
////				mLogger.info("Deleted file: successful");
////				br = new BufferedReader(new InputStreamReader(response.getContent()));
////				String tmp;
////				while ((tmp = br.readLine()) != null)
////				{
////					responseString.append(tmp);
////				}
////				mLogger.info("******* delete responseString:" + responseString.toString());
////			}
////			catch (IOException e)
////			{
////				e.printStackTrace();
////			}
////			catch (Exception e)
////			{
////				e.printStackTrace();
////			}
////			return responseString.toString();
////		}
////		catch (Exception e)
////		{
////			// TODO Auto-generated catch block
////			e.printStackTrace();
////			return null;
////		}
////	}
//
//}
