package com.adaptavant.controller;

import java.util.ResourceBundle;

public class AuthenticationUtil
{

    public static final String AUTHENTICATION_PROVIDER_ID = "authenticaitonProviderId";
	
	public static final String GOOGLE_AUTHENTICATION_PROVIDER_ID = "google";
	
	public static final String YAHOO_AUTHENTICATION_PROVIDER_ID = "yahoo";
	
	public static final String FACEBOOK_AUTHENTICATION_PROVIDER_ID = "facebook";
	public static final String FACEBOOK_CLINET_ID = "client_id";
	public static final String FACEBOOK_CLIENT_SECRETE = "faceBookclientSecrete";
	public static final String FACEBOOK_CODE = "code";
	public static final String FACEBOOK_USERSESSIONID = "faceBookuserSessionId";
	
	public static final String LOGOUT_SUCCESS = "LOGOUT SUCCESS";
	public static final String LOGOUT_FAILURE = "LOGOUT FAILURE";
	
	
	public static String getResourceString(String key){
		return ResourceBundle.getBundle("ApplicationResources").getString(key);
	}
				
}
