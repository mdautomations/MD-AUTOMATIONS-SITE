$(document).ready(function () {

    //Clearing And Retrieving Placeholder Values
	var commonCookie = getvalue('studentnamecookie');
	    $( "#date" ).datepicker();
	if(commonCookie!=null)
	{
		if(window.location.pathname == '/portal')
		{
			var studentname = commonCookie;
			$('#studentname').val(commonCookie);
		}
		else if(window.location.pathname == '/accountsetup')
		{
			var studentemail = getvalue('studentemail');
			var studentmobile = getvalue('studentmobile');
			var studentcollege = getvalue('studentcollege');
			var studentdegree = getvalue('studentdegree');
			$('#studentemail').val(studentemail);
			$('#studentmobile').val(studentmobile);
			$('#studentcollege').val(studentcollege);
			$('#studentdegree').val(studentdegree);
		}
		else if(window.location.pathname == '/projectdelivery')
		{
			var projectcourse = getvalue('projectcourse');
			var referal = getvalue('referal');
			var date = getvalue('date');
			var budget = getvalue('Slider1');
			$('#projectcourse').val(projectcourse);
			$('#referal').val(referal);
			$('#date').val(date);
//			$('#Slider1').val(budget);
		}
    }
	$('#status').html("");
	function getvalue(c_name)
	{
		var i,x,y,ARRcookies=document.cookie.split(";");
		for (i=0;i<ARRcookies.length;i++)
		{
		  x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
		  y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
		  x=x.replace(/^\s+|\s+$/g,"");
		  if (x==c_name)
		  {
			  return unescape(y);
		  }
		}
		
	}
	
    $('input,textarea').focus(function () {
        $(this).data('placeholder', $(this).attr('placeholder'))
        $(this).attr('placeholder', '');
    });
    $('input,textarea').blur(function () {
        $(this).attr('placeholder', $(this).data('placeholder'));
    });

    //Placeholder Fix IE9
    
    if (navigator.appVersion.indexOf("MSIE 9.") != -1) {
        $('[placeholder]').focus(function () {
            var input = $(this);
            if (input.val() == input.attr('placeholder')) {
                input.val('');
                input.removeClass('placeholder');
            }
        }).blur(function () {
            var input = $(this);
            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                input.addClass('placeholder');
                input.val(input.attr('placeholder'));
            }
        }).blur().parents('form').submit(function () {
            $(this).find('[placeholder]').each(function () {
                var input = $(this);
                if (input.val() == input.attr('placeholder')) {
                    input.val('');
                }
            })
        });
    }

    //Close-Button

    $('.btn-cls').click(function(){
        $('.modal-wrapper').fadeOut('fast');
        $('.modal-content').fadeOut('fast');
    });

    //Terms

    $('.terms').click(function(){
        $('.modal-wrapper').fadeIn('fast');
        $('.modal-content').fadeIn('fast');
    });
     
    attachHandlers();
});

function attachHandlers()
{
	$('#studentnamebutton').on('click',function()
	{
		var studentname = $.trim($('#studentname').val())
		if(studentname.length>0)
		{
			cookieSetWithExpDays('studentnamecookie',studentname,365);
			$('#loaddata').css('display','block');
			location.href='/accountsetup';
		}
		else
		{
			$('#studentname').css('background','rgb(188, 223, 243)');
		}
	});
	
	$('#accountsetup').on('click',function()
	{
		var studentemail = $.trim($('#studentemail').val());
		var studentmobile = $.trim($('#studentmobile').val());
		var studentcollege = $.trim($('#studentcollege').val());
		var studentdegree = $.trim($('#studentdegree').val());
		var status  = "";
		if(studentemail.length>0 && studentmobile.length>0 && studentcollege.length>0 && studentdegree.length>0)
		{
			$('#secondload').css('display','block');
			cookieSetWithExpDays('studentemail',studentemail,365);
			cookieSetWithExpDays('studentmobile',studentmobile,365);
			cookieSetWithExpDays('studentcollege',studentcollege,365);
			cookieSetWithExpDays('studentdegree',studentdegree,365);
			status = true;
		}
		else
		{
			if(!studentemail.length>0)
			{
				$('#studentemail').css('background','rgb(188, 223, 243)');
				status = false;
			}
			if(!studentmobile.length>0)
			{
				$('#studentmobile').css('background','rgb(188, 223, 243)');
				status = false;
			}
			if(!studentcollege.length>0)
			{
				$('#studentcollege').css('background','rgb(188, 223, 243)');
				status = false;
			}
			if(!studentdegree.length>0)
			{
				$('#studentdegree').css('background','rgb(188, 223, 243)');
				status = false;
			}
		}
		if(status)
		{
			location.href='/projectdelivery';
		}
	});
	
	$('#signup').on('click',function()
	{
		var projectcourse = $.trim($('#projectcourse').val());
		var referal    	  = $.trim($('#referal').val());
		var mode 		  =	$.trim($('.selectedoption').attr('id'));
		var date 		  =  $.trim($('#date').val());
		var budget        = $.trim($('#Slider1').val());
		var studentname   =  getvalue('studentnamecookie');
		var studentemail = getvalue('studentemail');
		var studentmobile = getvalue('studentmobile');
		var studentcollege = getvalue('studentcollege');
		var studentdegree = getvalue('studentdegree');
		
		
		
		try
		{
			console.info("projectcourse :: "+projectcourse.length);
			console.info("studentcollege :: "+studentcollege.length);
			console.info("studentname :: "+studentname.length);
			console.info("studentmobile :: "+studentmobile.length);
			console.info("studentemail :: "+studentemail.length);
			console.info("studentdegree :: "+studentdegree.length);
			console.info("mode :: "+mode.length);
			console.info("date :: "+date.length);
			console.info("budget :: "+budget.length);
			console.info("referal :: "+referal.length);
			if(projectcourse.length>0 && referal.length>0 && mode.length>0 && date.length>0 && budget.length>0 && studentname.length>0 && studentemail.length>0 && studentmobile.length>0 && studentcollege.length>0 && studentdegree.length>0)
			{
				$('#loaddata').css('display','block');
				$.ajax({
					type	: 'POST', 
					url		: '/studentregistration' ,
					data	: {budget:budget,date:date,studentname:studentname,studentemail:studentemail,studentmobile:studentmobile,studentcollege:studentcollege,studentdegree:studentdegree,projectcourse:projectcourse,referal:referal,mode:mode,},
					success	: function(data)
							  {
										if(data!="success")
										{
											$('#loaddata').css('display','none');
											location.href="/failure";
										}
										else
										{
											$('#loaddata').css('display','none');
											location.href="/success";
											deletecookie("studentnamecookie");
											deletecookie("studentname");
											deletecookie("studentemail");
											deletecookie("studentmobile");
											deletecookie("studentcollege");
											deletecookie("studentdegree");
											deletecookie("budget");
											deletecookie("date");
											deletecookie("referal");
											deletecookie("mode");
											deletecookie("projectcourse");
										}
										
							  }
				});
			} 
			else
			{
				if(!projectcourse.length>0)
				{
					$('#projectcourse').css('background','rgb(188, 223, 243)');
				}
				if(!referal.length>0)
				{
					$('#referal').css('background','rgb(188, 223, 243)');
				}
				if(!mode.length>0)
				{
					$('#mode').css('background','rgb(188, 223, 243)');
				}
				if(!date.length>0)
				{
					$('#date').css('background','rgb(188, 223, 243)');
				}
				if(!budget.length>0)
				{
					$('#Slider1').css('background','rgb(188, 223, 243)');
				}
			}
		}
		catch(e)
		{
			console.error("this is the error :: "+e);
			location.href="/failure";
		} 
		
	});	
		$('#projectchoice').on('click',function()
		{
			$(this).addClass('selectedoption');
			$('#coursechoice').removeClass('selectedoption');
			
		});
		$('#coursechoice').on('click',function()
		{
			$(this).addClass('selectedoption');
			$('#projectchoice').removeClass('selectedoption');
		});	
		$('.divider').on('click',function()
		{
			$(window).scrollTop();
		});
		

}
function getvalue(c_name)
{
	var i,x,y,ARRcookies=document.cookie.split(";");
	for (i=0;i<ARRcookies.length;i++)
	{
	  x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
	  y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
	  x=x.replace(/^\s+|\s+$/g,"");
	  if (x==c_name)
	  {
		  return unescape(y);
	  }
	}
	
}
function cookieSetWithExpDays(name,value,days)
{
	console.info("going to set cookie(cookie.setWithExpDays) :: "+value);
	 if (days) 
	 {
		  var date = new Date();
		  date.setTime(date.getTime()+(days*24*60*60*1000));
		  var expires = "; expires="+date.toGMTString();
	 }
	 else var expires = "";
	 document.cookie = name+"="+value+expires+"; path=/";
	 console.info("After Setting the Cookie "+ document.cookie);
}

function deletecookie(name)
{
		 var d = new Date();
		 document.cookie = name +'=; expires=' + d.toGMTString() + ";" + ";";
}
function store()
{
	var projectcourse = $('#projectcourse').val();
	var referal = $('#referal').val();
	var date = $('#date').val();
	var budget = $('#Slider1').val();
	cookieSetWithExpDays('projectcourse',projectcourse,365);
	cookieSetWithExpDays('referal',referal,365);
	cookieSetWithExpDays('date',date,365);
	cookieSetWithExpDays('budget',budget,365);
	
}
