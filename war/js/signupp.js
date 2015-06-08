
var global = "false";
$(document).ready(function() {
 
//	$('.containers').css('background','none');
//	$('.container').css('background','none');
//	$('#trigger').hide();
	signup();
	$('#ece').on("click",function()
	{
		$('#containertoshow').show();
				
	});
  });

function signup()
{
	$('#signup').on("click",function()
			{
						var studentname = $('#studentname').val();
						var email 		= $('#email').val();
						var password 	= $('#password').val();
						var phone 		= $('#phone').val();
						var confirmpass = $('#confirmpassword').val();
						var qualification = $('#qualification').val();
						var skills 		= $('#skills').val();
						 var reg_email			=	/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
						 var regnum				=	/^[0-9-+]+$/;
						 if((studentname=="") || (email=="") || (password=="") || (phone=="") || (qualification=="") || (skills=="") || (confirmpass==""))
						  {
							 if(studentname==null || studentname=='')
								{
									$('#studentname').css('background-color','rgb(176, 199, 221)');
					       			$('#studentname').css('color','black');
					       			$('#studentname').val("");
								}
							 if(confirmpass==null || confirmpass=='')
								{
									$('#confirmpassword').css('background-color','rgb(176, 199, 221)');
					       			$('#confirmpassword').css('color','black');
					       			$('#confirmpassword').val('');
								}
							 if(email==null || email=='')
								{
									$('#email').css('background-color','rgb(176, 199, 221)');
					       			$('#email').css('color','black');
					       			$('#email').val("");
								}
							 if(password==null || password=='')
								{
									$('#password').css('background-color','rgb(176, 199, 221)');
					       			$('#password').css('color','black');
					       			$('#password').val('');
								}
							 if(phone==null || phone=='')
								{
									$('#phone').css('background-color','rgb(176, 199, 221)');
					       			$('#phone').css('color','black');
					       			$('#phone').val("");
								}
							 if(qualification==null || qualification=='')
								{
									$('#qualification').css('background-color','rgb(176, 199, 221)');
					       			$('#qualification').css('color','black');
					       			$('#qualification').val("");
								}
							 if(skills==null || skills=='')
								{
									$('#skills').css('background-color','rgb(176, 199, 221)');
					       			$('#skills').css('color','black');
					       			$('#skills').val("");
								}
						  }
						 if(reg_email.test(email)==false)
					 	 	{
					 		 	$('#email').css('background-color','rgb(176, 199, 221)');
					 		 	$('#email').css('color','black');
					 		 	$('#email').val("");
					 	 	}
						 else
							 {
							    $('#spinner').html('<img src="../images/spinner.gif" style="height: 50px;">Signing Up..');
							 	$('#spinner').show();
					 		 	$.ajax({
											type	: 'POST', 
											url		: '/register' ,
											data	: {studentname:studentname,confirmpass:confirmpass,email:email,password:password,skills:skills,qualification:qualification,phone:phone},
											success	: function(data)
													  {
															
															$('#spinner').html("Successfully signed up, Please login to continue");
//															$('#trigger').show();
															$('#studentname').val('');
															$('#email').val('');
															$('#password').val('');
															$('#phone').val('');
															$('#skills').val('');
															$('#qualification').val('');
															
															$('#studentname').hide();
															$('#signup').hide();
															$('#confirmpassword').hide();
															$('#phone').hide();
															$('#skills').hide();
															$('#qualification').hide();
															$('#register').hide();
															$('#signin').show();
															
													  }
					 		 			});
							 }
						
			});
	
	$('#clear').on('click',function()
	{
		$('#studentname').val('');
		$('#email').val('');
		$('#password').val('');
		$('#phone').val('');
		$('#skills').val('');
		$('#qualification').val('');
	});
	
	$('#register').on('click',function()
	{
		$('#studentname').show();
		$('#signup').show();
		$('#confirmpassword').show();
		$('#phone').show();
		$('#skills').show();
		$('#qualification').show();
		$('#register').hide();
		$('#signin').hide();
		$('#back').show();
	});
	
	$('#back').on('click',function()
	{
		location.reload(true);
	});
	
	$('#signin').on("click",function()
			{
				var email 		= $('#email').val();
				var password 	= $('#password').val();
				alert("email::"+email.length);
				alert("password::"+password.length);
				
				if(email.length>0 || password.length>0)
				{
					$('#spinner').html('<img src="../images/spinner.gif" style="height: 50px;">Logging in..');
					$('#spinner').show();
					
					$.ajax({
						type	: 'POST', 
						url		: '/login' ,
						data	: {email:email,password:password},
						success	: function(data)
								  {
										
									if(data=="success")
									{
//										$('#trigger').show();
										$('#spinner').hide();
//										$('#containertoshow').show();
										$('.containers').hide();
										$('#loginform').hide();
										$('#downloads').trigger('click');
										$('#containertoshow').css('margin-top','1%');
										$('#heading').html("Download Materials");
										$('#cbp-hrmenu').show();
									}
									else
									{
										$('#spinner').html("Invalid Email / Password");
									}
										
										
								  }
			 			});
				}
				else 
				{
					if(email==null || email=='')
					{
						$('#email').css('background-color','rgb(176, 199, 221)');
		       			$('#emaill').css('color','black');
		       			$('#email').val("");
					}
					if(password==null || password=='')
					{
						$('#password').css('background-color','rgb(176, 199, 221)');
		       			$('#password').css('color','black');
		       			$('#password').val("");
					}	
				}
				
				
			});
						
		$('#ecebranch').on('click',function()
		{
			$('#containertoshow').hide();
			$('#insideECE').hide();
			$('#containerbranchECE').show();
			$('#insidenetworksecurity').hide();
			$('#containerbranchCSE').hide();
			$('#containerbranchme').hide();
			$('#containerbranchECE').css('margin-top','-30%');
			$('#heading').html("Search in Electronics Zone");
			$('#downloads').trigger('click');
			$('html, body').scrollTop( $(document).height() - $(window).height() );
		});
		$('#eeebranch').on('click',function()
				{
					$('#ecebranch').trigger('click');
				});
		$('#csebranch').on('click',function()
		{
			$('#containertoshow').hide();
			$('#insideECE').hide();
			$('#insidenetworksecurity').hide();
			$('#containerbranchECE').hide();
			$('#containerbranchCSE').show();
			$('#containerbranchme').hide();
			$('#downloads').trigger('click');
			$('#containerbranchCSE').css('margin-top','-30%');
			$('#heading').html("Search in CSE Zone");
			$('html, body').scrollTop( $(document).height() - $(window).height() );
		});
		$('#itbranch').on('click',function()
				{
					$('#csebranch').trigger('click');
				});
		$('#mphilbranch').on('click',function()
				{
					$('#csebranch').trigger('click');
				});
		$('#me').on('click',function()
		{
			$('#containertoshow').hide();
			$('#downloads').trigger('click');
			$('#insidenetworksecurity').hide();
			$('#insideECE').hide();
			$('#containerbranchECE').hide();
			$('#containerbranchCSE').hide();
			$('#containerbranchme').show();
			$('#containerbranchme').css('margin-top','-30%');
			$('html, body').scrollTop( $(document).height() - $(window).height() );
		});
		$('#vlsitopic').on('click',function()
		{
			$('#insideECE').show();
			$('#insidenetworksecurity').hide();
			$('#containertoshow').hide();
			$('#containerbranchECE').hide();
			$('#downloads').trigger('click');
			$('#containerbranchCSE').hide();
			$('#containerbranchme').hide();
			$('#insideECE').css('margin-top','1%');
			$('#heading').html("Download Abstracts");
			$('html, body').scrollTop( $(document).height() - $(window).height() );
			
		});
		$('#networksecurity').on('click',function(){
				$('#insidenetworksecurity').css('display','block');
		$('#insideECE').hide();
		$('#containertoshow').hide();
		$('#containerbranchECE').hide();
		$('#containerbranchCSE').hide();
		$('#containerbranchme').hide();
		$('#downloads').trigger('click');
		$('#insidenetworksecurity').css('margin-top','1%');
		$('#heading').html("Download Abstracts");
		$('html, body').scrollTop( $(document).height() - $(window).height() );
		
		});
		$('#networksecurityme').on('click',function()
		{
			$('#networksecurity').trigger('click');
			
		});
		$('#powertopic').on('click',function()
		{
			$('#vlsitopic').trigger('click');
		});
		$('#embededtopic').on('click',function()
				{
			$('#vlsitopic').trigger('click');
				});
		$('#roboticstopic').on('click',function()
				{
			$('#vlsitopic').trigger('click');
				});
		$('#pictopic').on('click',function()
				{
			$('#vlsitopic').trigger('click');
				});
		$('#wiredtopic').on('click',function()
				{
			$('#vlsitopic').trigger('click');
				});
		$('#wirelesstopic').on('click',function()
				{
			$('#vlsitopic').trigger('click');
				});
		$('#manettopic').on('click',function()
		{
			$('#vlsitopic').trigger('click');
		});
		$('#imagetopic').on('click',function()
		{
			$('#vlsitopic').trigger('click');
		});
		$('#powersystemtopic').on('click',function()
		{
			$('#vlsitopic').trigger('click');
		});
		$('#clickcourses').on('click',function()
		{
			$('#courses').show();
			
		});
		 

		$('#vlsiheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
					
				});
		$('#embeddedheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
				});
		$('#Powerheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
				});
		$('#digitalheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
				});
		$('#imageheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
				});
		$('#manetheader').on('click',function()
				{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
					
				});
		$('#wirelessheader').on('click',function()
		{
					$('#vlsitopic').trigger('click');
					$('#downloads').trigger('click');
					$('html, body').scrollTop( $(document).height() - $(window).height() );
		});
		$('#networkheader').on('click',function()
		{
							$('#networksecurity').trigger('click');
							$('#downloads').trigger('click');
							$('html, body').scrollTop( $(document).height() - $(window).height() );
		});
						
}



