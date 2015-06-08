package com.adaptavant.controller;

import org.openid4java.consumer.ConsumerManager;

public class ConsumerManagerService
{
	
	private static ConsumerManager consumerManager;
	
	static
	{
		try
		{
			consumerManager = new ConsumerManager();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static ConsumerManager getConsumerManager()
	{
		return consumerManager;
	}
	
}
