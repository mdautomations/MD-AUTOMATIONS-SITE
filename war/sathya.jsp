<!DOCTYPE html>
<html class="no-js">
<head>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1,requiresActiveX=true">
    
    
	<title>Sathya Narayanan Anbu</title>
	<meta name="description" content=" add description  ... ">
    
    <!-- /// Favicons ////////  -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="favicon.png">


	<!-- /// Template CSS ////////  -->
    <link rel="stylesheet" href="_layout/css/base.css">
    <link rel="stylesheet" href="_layout/css/grid.css">
    <link rel="stylesheet" href="_layout/css/elements.css">
    <link rel="stylesheet" href="_layout/css/layout.css">

	<!-- /// JS Plugins CSS ////////  -->
    <link rel="stylesheet" href="_layout/js/bxslider/jquery.bxslider.css">
    <link rel="stylesheet" href="_layout/js/magnificpopup/magnific-popup.css">
    
    <!-- /// Google Fonts ////////  -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:400,700">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300,700">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700">
    
    <!-- /// FontAwesome Icons 4.0.3 ////////  -->
	<link rel="stylesheet" href="_layout/css/fontawesome/font-awesome.min.css">
    
    <!-- /// Custom Icon Font ////////  -->
    <link rel="stylesheet" href="_layout/css/iconfontcustom/icon-font-custom.css">
    
    <!-- /// Cross-browser CSS3 animations ////////  -->
    <link rel="stylesheet" href="_layout/css/animate/animate.min.css">


    <!-- /// Modernizr ////////  -->
    <script src="_layout/js/modernizr-2.6.2.min.js"></script>
 <script>
 function calsubmit()
 {
	 var name = $.trim($('#name').val());
		var email    	  = $.trim($('#email').val());
		var phone 		  =  $.trim($('#phone').val());
		var message        = $.trim($('#message').val());
		
		if(name.length>0  && phone.length>0 && email.length>0 && message.length>0)
		{
			 var params = {name:name, email: email, phone:phone, message:message};
			 	console.log(params);
			 	$.ajax({
			         type: 'POST',
			         url: "/feedbackmsg",
			         data: params,
			         success: function(data) {
			        	 alert("Your message has been submitted, I ll be in touch with you soon.");
			         },
			         error: function(req, status, error) { }
			     });
		}
		else
		{
			if(!name.length>0)
			{
				$('#name').css('background','rgb(200, 200, 164)');
			}
			if(!email.length>0)
			{
				$('#email').css('background','rgb(200, 200, 164)');
			}
			if(!phone.length>0)
			{
				$('#phone').css('background','rgb(200, 200, 164)');
			}
			if(!message.length>0)
			{
				$('#message').css('background','rgb(200, 200, 164)');
			}
		}
 }
 
 
 </script>
</head>
<body>

	<div id="pageloader">
		<div class="loader-img">
        
			<img src="_layout/images/loader.gif" alt=""> 
		
        </div><!-- end .loader-img -->
	</div><!-- end .pageloader -->
 
	<div id="wrap">
        
		<div id="header">
        
		<!-- /// HEADER  //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->                	
                        
			<div class="parallax full-screen" style="background-image:url(_content/backgrounds/1920x1280.jpg) ; background-position: 49% -100px;">
				
				<div class="parallax-content full-screen">
				
					<div class="parallax-overlay" style="background-image:url(_content/backgrounds/pattern.png);"></div>
					
					<div class="parallax-content-inner">
					
						<div class="row">
                        	<div class="span12 text-center">
                            	
                                <div class="headline">
                                	
                                    <h1>Sathya Narayanan</h1>
                                    <p><span>Senior Software Developer</span></p>
                                    
                                </div><!-- end .headline -->
                                																
                            </div><!-- end .span12 -->
                        </div><!-- end .row -->
					
					</div><!-- end .parallax-content-inner -->
                    
                    <a href="#personal-profile">
                        <i class="ifc-down4"></i>
                    </a>
				
				</div><!-- end .parallax-content -->			
				
            </div><!-- end .parallax -->
            
            <div id="nav">
        
                <div class="row">
                    <div class="span3">
                    
                        <!-- // Logo // -->
                        <a href="index-2.jsp" id="logo">
                            Sathya
                        </a>
                    
                    </div><!-- end .span3 -->
                    <div class="span9">
                    
                        <a href="#" id="mobile-menu-trigger">
                            <i class="fa fa-bars"></i>
                        </a>
                        
                        <!-- // Menu // -->
                        <ul class="sf-menu" id="menu">
                            <li>
                                <a href="#personal-profile">Personal Details</a>
                            </li>
                            <li>
                                <a href="#work-experience">Experience</a>
                            </li>
                            <li>
                                <a href="#education">Education</a>
                            </li>
                            <li>
                                <a href="#references">References</a>
                            </li>
                            <li>
                                <a href="#skills">Skills</a>
                            </li>
                            <li>
                                <a href="#contact">Contact</a>
                            </li>
                        </ul>
    
                    </div><!-- end .span9 -->
                </div><!-- end .row -->	
                
			</div><!-- end #nav -->

		<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

		</div><!-- end #header -->
		<div id="content">
		
		<!-- /// CONTENT  /////////////////////////////////////////////////////////////////////////////////////////////////////////// -->						
            
            <div id="personal-profile">
                                    
                <div class="row">
                    <div class="span12 text-center">
                        
                        <div class="headline">
                            
                            <p><span>Who am I?</span></p>
                            <h1>Personal Details</h1>
                            
                        </div><!-- end .headline -->
                        
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                
                <div class="row">
                	<div class="span3">
                    	
                        <img class="responsive-img" src="_content/270x270.png" alt="">
                        
                    </div><!-- end .span3 -->
                    <div class="span4">
                    	
                        <ul class="personal-details">
                        	<li>Sathya Narayanan Anbu</li>
                            <li>Indian</li>
                            <li>91.99.52.592624</li>
                              <li>
                                <a href="mailto:sathya@mdautomations.com">sathya@mdautomations.com</a>
                            </li>
                            <li><a href="http://mdautomations.com">http://mdautomations.com</a></li>
                          
                        </ul>
                        
                    </div><!-- end .span4 -->
                    <div class="span5">
                    	
                        <h3 class="text-uppercase">Profesional Profile</h3>
                        
                        <p>I'm basically a computer lover and a person who is mad about technologies. Would love to innovate something new always.</p> 

						<p>And here is my personal profile. I always share this to people, who really want their project to be the best. I work for geeks. And I'm happy that is has reached you now.</p>
                        
                    </div><!-- end .span5 -->
                </div><!-- end .row -->
            
            </div><!-- end #personal-profile -->
            
            <div id="work-experience">
            	
                <div class="row">
                    <div class="span12 text-center">
                        
                        <div class="headline">
                            
                            <p><span>My Professional Background</span></p>
                            <h1>Work Experience</h1>
                            
                        </div><!-- end .headline -->
                        
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                
                <div class="row cv-section">
                	
                    <div class="span3">
                    	
                        <div class="cv-section-title">

                            <h1>
                            	<span>
                                	2010
                                    <small>October</small>
                                </span>
                                -
                                <span>Present</span>
                            </h1>
                            
                            
                            <h3>MD Automations</h3>
                            
                            <p>
                            	2010 - 2012 Senior Software Developer <br>
                            	2012 - 2014 Managing Partner & Programmer
                            </p>
                            
                        </div><!-- end .cv-section-title -->
                        
                    </div><!-- end .span3 -->
                    <div class="span9">
                    	
                        <div class="cv-item">
                        	
                            <h3 class="text-uppercase">Job Description</h3>
                            
                            <p>
                            	Senior Software Developer<br>
								MD Automations has evloved since 2003 after so many achivements and innovations. I personally great to be a part of it and I work for MD Automations as a software developer.
								Currently we are focused towards real time custom web and mobile applications (Android and iOS).
                            </p>
                            
                            <p>
                            	Managing Partner<br>
								I joined hands with MD Automations to make it better and better. Out team has got successful on almost all our works. We have got a well equipped team with extraordinary skills apart from academics.
								Proud to be a part of builiding base.
                            </p>
                            
                        </div><!-- end .cv-item -->
                        
                    </div><!-- end .span9 -->
                    
                </div><!-- end .cv-section -->
                
                <div class="row cv-section">
                	
                    <div class="span3">
                    	
                        <div class="cv-section-title">

                            <h1>
                            	<span>
                                	2007
                                    <small>March</small>
                                </span>
                                -
                                <span>
                                	2010
                                    <small>July</small>
                                </span>
                            </h1>
                            
                            
                            <h3>Cognizant Technology Solutions</h3>
                            
                            <p>
                            	2006 - 2009 Software Developer <br>
                            	2009 - 2010 Senior Software Developer
                            </p>
                            
                        </div><!-- end .cv-section-title -->
                        
                    </div><!-- end .span3 -->
                    <div class="span9">
                    	
                        <div class="cv-item">
                        	
                            <h3 class="text-uppercase">Job Description</h3>
                            
                            <p>
                            	Software Developer<br>
								Worked for Cognizant, which I should say is the building base for everything. It's such a good experience learning things. I was really worried missing that good environment. But though I'm continuing my carrier double the best that I had put my effots at CTS.
                            </p>
                            
                            <p>
                            	Web Developer<br>
                               Learnt Web technologies. Still love to learn more out of it. And I would say, am towards it.
                            </p>
                            
                        </div><!-- end .cv-item -->
                        
                    </div><!-- end .span9 -->
                    
                </div><!-- end .cv-section -->
                
                <div class="row cv-section">
                	
                    <div class="span3">
                    	
                        <div class="cv-section-title">

                            <h1>
                            	<span>
                                	2005
                                    <small>March</small>
                                </span>
                                -
                                <span>
                                	2007
                                    <small>February</small>
                                </span>
                            </h1>
                            
                            
                            <h3>MD Automations</h3>
                            
                            <p>Software Programmer</p>
                            
                        </div><!-- end .cv-section-title -->
                        
                    </div><!-- end .span3 -->
                    <div class="span9">
                    	
                        <div class="cv-item">
                        	
                            <h3 class="text-uppercase">Job Description</h3>
                            
                            <p>It was very beginning and initial stage, where MD Automations has evolved its beginning. Those days were really challenging and aspiring to take up real challenges. And today we would proudly say, we have clients across the world around 4 countries.</p>
                            
                        </div><!-- end .cv-item -->
                        
                    </div><!-- end .span9 -->
                    
                </div><!-- end .cv-section -->
                
            </div><!-- end #work-experience -->
            
            <div id="education">
            	
                <div class="row">
                    <div class="span12 text-center">
                        
                        <div class="headline">
                            
                            <p><span>My Education</span></p>
                            <h1>Education</h1>
                            
                        </div><!-- end .headline -->
                        
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                
                <div class="row cv-section">
                	
                    <div class="span3">
                    	
                        <div class="cv-section-title">

                            <h1>
                            	<span>
                                	2004
                                    <small>June</small>
                                </span>
                                -
                                <span>
                                	2008
                                    <small>March</small>
                                </span>
                            </h1>
                            
                            
                            <h3>Bachelor Degree</h3>
                            
                                <h3>Computer Science</h3>
                            <p>SVCE, Chennai</p>
                            
                        
                            
                        </div><!-- end .cv-section-title -->
                        
                    </div><!-- end .span3 -->
                    <div class="span9">
                    	
                        <div class="cv-item">
                        	
                            <h3 class="text-uppercase">College Zone</h3>
                            
                            <p>It was a great experience and foundation that my college has given me. I still remember my professors and other staff people, who really passionate about their subjects and their profession. This may sounds different to some people, but I have to be really thankful to my professors for spending their lot of time to clear all my silly doubts. My 4 years degree has taken me to this level and made me write my successfull biography. Thanks to SVCE.</p>
                            
                        </div><!-- end .cv-item -->
                        
                    </div><!-- end .span9 -->
                    
                </div><!-- end .cv-section -->
                
                <div class="row cv-section">
                	
                    <div class="span3">
                    	
                        <div class="cv-section-title">

                            <h1>
                            	<span>
                                	2002
                                    <small>September</small>
                                </span>
                                -
                                <span>
                                	2004
                                    <small>June</small>
                                </span>
                            </h1>
                            
                            
                            <h3>School of Creativity</h3>
                            
                            <p>Don &amp; Bosco</p>
                            
                        </div><!-- end .cv-section-title -->
                        
                    </div><!-- end .span3 -->
                    <div class="span9">
                    	
                        <div class="cv-item">
                        	
                            <h3 class="text-uppercase">School Profile </h3>
                            
                            <p>Don Bosco is a great platform for those who really wants to try something on their own. Yes ! It is a place of creativity. To be honest, I still remember, I havent attended any of my term exams during my whole higher secondary, and no one bothered about that in my school, instead making me to bring my parents and make them wait in front of principal's Cabin. Its a place of freedom and place where the real creativiy of a man starts.</p>
                            
                        </div><!-- end .cv-item -->
                        
                    </div><!-- end .span9 -->
                    
                </div><!-- end .cv-section -->
                
            </div><!-- end #education -->
            
            <div class="parallax" id="references" style="background-image:url(_content/backgrounds/1920x1000.jpg);">
            	
                <div class="parallax-content" style="padding:110px 0 70px 0;">
				
					<div class="parallax-overlay" style="background-image:url(_content/backgrounds/pattern.png);"></div>
					
					<div class="parallax-content-inner" >
                    
                    	<div class="row">
                        	<div class="span12">
                            	
                                <h1 class="text-center text-uppercase">References</h1>
                                
                            </div><!-- end .span12 -->
                        </div><!-- end .row -->
                        
                        <div class="row">
                        	<div class="span12">
                            	
                                <div class="references-slider">
                                
                                	<ul class="slides">
                                    	<li>
                                        	
                                            <div class="row">
                                            	<div class="span3 text-center">
                                                	
                                                    <div class="headline">
                            
                                                        <h2>Vijayan Duraiswamy</h2>
                                                        <p><span>Founder, MD Automations</span></p>
                                                        
                                                    </div><!-- end .headline -->
                                                    
                                                </div><!-- end .span3 -->
                                                <div class="span9">
                                                	
                                                    <p>To be short, We are on our path towards our goal, and 'Sathya' has the right capability. </p>
                                                    
                                                </div><!-- end .span9 -->
                                            </div><!-- end .row -->
                                        </li>
                                        <li>
                                        	
<!--                                             <div class="row"> -->
<!--                                             	<div class="span3 text-center"> -->
                                                	
<!--                                                     <div class="headline"> -->
                            
<!--                                                         <h2>John Smith</h2> -->
<!--                                                         <p><span>Genereal Manager</span></p> -->
                                                        
<!--                                                     </div>end .headline -->
                                                    
<!--                                                 </div>end .span3 -->
<!--                                                 <div class="span9"> -->
                                                	
<!--                                                     <p>Curabitur gravida pharetra augue sit amet tincidunt. Morbi a mi elementum, vehicula felis nec,  -->
<!--                                                     commodo risus. Aliquam congue dignissim tempus. Nullam pharetra urna facilisis tellus vulputate,  -->
<!--                                                     ac vehicula quam tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec  -->
<!--                                                     sollicitudin, erat et consectetur tristique eros nulla dapibus.</p> -->
                                                    
<!--                                                 </div>end .span9 -->
<!--                                             </div>end .row -->
                                            
                                        </li>
                                        <li>
                                        	
<!--                                             <div class="row"> -->
<!--                                             	<div class="span3 text-center"> -->
                                                	
<!--                                                     <div class="headline"> -->
                            
<!--                                                         <h2>Jessica Doe</h2> -->
<!--                                                         <p><span>Genereal Manager</span></p> -->
                                                        
<!--                                                     </div>end .headline -->
                                                    
<!--                                                 </div>end .span3 -->
<!--                                                 <div class="span9"> -->
                                                	
<!--                                                     <p>Quisque erat ipsum, auctor nec tincidunt eu, hendrerit non ante. Duis eleifend odio sed rutrum  -->
<!--                                                     tempus. Quisque interdum congue nunc vel ornare. Integer sit amet sollicitudin magna. Maecenas id  -->
<!--                                                     sapien risus. Mauris tincidunt feugiat libero, sit amet adipiscing mauris scelerisque at. Maecenas  -->
<!--                                                     in tortor est. Ut molestie sodales neque, nec posuere tortor dictum nec.</p> -->
                                                    
<!--                                                 </div>end .span9 -->
<!--                                             </div>end .row -->
                                            
                                        </li>
                                        <li>
                                        	
<!--                                             <div class="row"> -->
<!--                                             	<div class="span3 text-center"> -->
                                                	
<!--                                                     <div class="headline"> -->
                            
<!--                                                         <h2>Linda Carter</h2> -->
<!--                                                         <p><span>Genereal Manager</span></p> -->
                                                        
<!--                                                     </div>end .headline -->
                                                    
<!--                                                 </div>end .span3 -->
<!--                                                 <div class="span9"> -->
                                                	
<!--                                                     <p>Praesent tristique mattis leo, vel lobortis felis. Phasellus purus neque, euismod a pretium  -->
<!--                                                     pulvinar, placerat ac quam. Donec metus nisi, luctus eu volutpat non, pellentesque vel nulla.  -->
<!--                                                     Suspendisse dignissim nisi non velit interdum, in condimentum augue varius. Nullam ac felis eu  -->
<!--                                                     lacus rhoncus posuere. Fusce pretium auctor bibendum.</p> -->
                                                    
<!--                                                 </div>end .span9 -->
<!--                                             </div>end .row -->
                                            
                                        </li>
                                    </ul>
                                    
                                </div><!-- end .references-slider -->
                                
                            </div><!-- end .span12 -->
                        </div><!-- end .row -->
                    
                    </div><!-- end .parallax-content-inner -->
                
            	</div><!-- end .parallax-content -->
                
            </div><!-- end #references -->
            
            <div id="skills">
            	
                <div class="row">
                    <div class="span12 text-center">
                        
                        <div class="headline">
                            
                            <p><span>What I'm best at</span></p>
                            <h1>Skills &amp; Knowledge</h1>
                            
                        </div><!-- end .headline -->
                        
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                
                <div class="row">
                	<div class="span7">
                    	
                        <h2 class="text-uppercase">Software</h2>
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Network Simulator
                                <span style="left:70%">70%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="70"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Big Data
                                <span style="left:50%">50%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="50"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	 Data Mining
                                <span style="left:80%">80%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="80"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                         <div class="fixed">
                        
                         <div class="progress-bar-description">
                            	 Cloud Computing
                                <span style="left:85%">85%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="85"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Photoshop
                                <span style="left:86%">86%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="86"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Corel Draw
                                <span style="left:73%">73%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="73"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Adobe Illustrator
                                <span style="left:79%">79%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="79"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Adobe InDesign
                                <span style="left:57%">57%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="57"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                        <div class="fixed">
                        
                            <div class="progress-bar-description">
                            	Cinema 4D
                                <span style="left:33%">33%</span>
                            </div><!-- end .progress-bar-description -->
                           
                            <div class="progress-bar">  
                                <span class="progress-bar-outer" data-width="33"> 
                                    <span class="progress-bar-inner"></span> 
                                </span>
                            </div><!-- end .progress-bar -->
                            
                        </div>
                        
                    </div><!-- end .span7 -->
                    <div class="span5">
                    	
                        <h2 class="text-uppercase">Recognitions</h2>
                        
                        <div class="icon-box-1">
                        
                            <i class="ifc-xlarge_icons"></i>
      
                            <div class="icon-box-content">
                            
                                <h3>International Projects</h3>
                                
                                <p>
                                	Has worked on MANETS for Glamorgon University, London. United Kingdom.
                                </p>
                            
                            </div><!-- end .icon-box-content -->
                            
                        </div><!-- end .icon-box-1 -->
                        
                        <div class="icon-box-1">
                        
                            <i class="ifc-king"></i>
      
                            <div class="icon-box-content">
                            
                                <h3>Best Project Award</h3>
                                
                                <p>
                                	Has achived best project award for 3 Students<br>
									@ Pondicherry
                                </p>
                            
                            </div><!-- end .icon-box-content -->
                            
                        </div><!-- end .icon-box-1 -->
                        
                        <div class="icon-box-1">
                        
                            <i class="ifc-integrated_webcam"></i>
      
                            <div class="icon-box-content">
                            
                                <h3>Have been working on Big Data</h3>
                                
                                <p>
                                	MD Automations started BigData Projects<br>
                                </p>
                            
                            </div><!-- end .icon-box-content -->
                            
                        </div><!-- end .icon-box-1 -->
                        
                    </div><!-- end .span5 -->
                </div><!-- end .row -->
                
                <div class="row">
                	<div class="span6">
                    	
                        <h2 class="text-uppercase">Language Skills</h2>
                        
                        <div class="row">
                        	<div class="span2">
                            	
                                <div class="pie-chart" data-percent="100" data-barColor="#252525" data-trackColor="#5f5f5f" data-lineWidth="8" data-barSize="170">
                        
                                    <span class="pie-chart-custom-text">
                                    	<span>C</span><br>
                                        <span class="hidden-tablet">C++, JAVA</span>
                                    </span>
                                    
                                </div><!-- end .pie-chart -->
                                
                            </div><!-- end .span2 -->
                            <div class="span2">
                            	
                                <div class="pie-chart" data-percent="85" data-barColor="#252525" data-trackColor="#5f5f5f" data-lineWidth="8" data-barSize="170">
                        
                                    <span class="pie-chart-custom-text">
                                    	<span>Angular Js</span><br>
                                        <span class="hidden-tablet">Backbone.js</span>
                                    </span>
                                    
                                </div><!-- end .pie-chart -->
                                
                            </div><!-- end .span2 -->
                            <div class="span2">
                            	
                                <div class="pie-chart" data-percent="25" data-barColor="#252525" data-trackColor="#5f5f5f" data-lineWidth="8" data-barSize="170">
                        
                                    <span class="pie-chart-custom-text">
                                    	<span>J2EE</span><br>
                                        <span class="hidden-tablet">Springs</span>
                                    </span>
                                    
                                </div><!-- end .pie-chart -->
                                
                            </div><!-- end .span2 -->
                        </div><!-- end .row -->
                        
                    </div><!-- end .span6 -->
                    <div class="span6">
                    	
                        <h2 class="text-uppercase">Knowledge</h2>
                        
                        <div class="row">
                        	<div class="span3">
                            	
                                <ul class="check">                                	
                                    <li>Google Analytics and SEO</li>
                                    <li>Instal and Configure</li>
                                    <li>E-commerce Platform</li>
                                    <li>Color theory knowledge</li>
                                    <li>Web Usability</li>                                    
                                    <li>Grid &amp; Layout</li>
                                </ul>
                                
                            </div><!-- end .span3 -->
                            <div class="span3">
                            	
                                <ul class="check">
                                	<li>Photo manipulation skills</li>
                                    <li>Digital Painting</li>
                                    <li>Photo Composition</li>
                                    <li>Good sense of Tipography</li>
                                    <li>Portrait Retouching</li>
                                    <li>Video Editing</li>                                    
                                </ul>
                                
                            </div><!-- end .span3 -->
                        </div><!-- end .row -->
                        
                    </div><!-- end .span6 -->
                </div><!-- end .row -->
                
                <div class="row">
                	<div class="span12">
                    	
                        <h2 class="text-uppercase">Hobbies &amp; Interests</h2>
                        
                        <ul class="interests-list fixed">
                        	<li>
                                
                                <p>
                                    <i class="ifc-sea_waves"></i>
                                    Sports 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-sea_waves"></i>
                                    <strong>Sports</strong>
                                    
<!--                                     <p>Lorem ipsum dolor sit amet, sagittis arcu diam elit. Morbi vitae sem laoreet mattis egestas nunc eget elit.</p> -->
                                    
                                </div><!-- end .interest-details -->                    
                                
                            </li>
                            <li>
                            
                                <p>
                                    <i class="ifc-photo"></i>
                                    Photography 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-photo"></i>
                                    <strong>Photography</strong>
                                    
<!--                                     <p>Praesent bibendum eros ut nulla adipiscing, tempus tincidunt tellus scelerisque quisque quis laoreet lacus.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                               
                            </li>
                            <li>
                            
                                <p>
                                	<i class="ifc-power_point"></i>
                                	Marketing
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-power_point"></i>
                                    <strong>Marketing</strong>
                                    
<!--                                     <p>Praesent laoreet nulla elit, et pellentesque ligula fermentum id. Quisque vulputate bibendum erat rhoncus.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                                
                            </li>
                            <li>
                            
                                <p>
                                    <i class="ifc-radio_tower"></i>
                                    Movies 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-radio_tower"></i>
                                    <strong>Movies</strong>
                                    
<!--                                     <p>Nam vestibulum euismod elementum. Etiam consequat dolor quis libero pulvinar, sit amet viverra turpis imperdiet.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                               
                            </li>
                            <li>
                            
                                <p>
                                	<i class="ifc-portrait_mode"></i>
                                	Fashion
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-portrait_mode"></i>
                                    <strong>Fashion</strong>
                                    
<!--                                     <p>Praesent tristique mattis leo, vel lobortis felis. Phasellus purus neque, euismod a pretium pulvinar placerat.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                                
                            </li>
                            <li>
                            
                                <p>
                                	<i class="ifc-smartphone_tablet"></i>
                                	Technology 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-smartphone_tablet"></i>
                                    <strong>Technology</strong>
                                    
<!--                                     <p>Suspendisse dignissim nisi non velit interdum, in condimentum augue varius. Nullam ac eu lacus rhoncus.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                               
                            </li>
                            <li>
                            
                                <p>
                                    <i class="ifc-airplane_take_off"></i>
                                    Travel  
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-airplane_take_off"></i>
                                    <strong>Travel</strong>
                                    
<!--                                     <p>Fusce pretium auctor bibendum. Suspendisse rutrum rhoncus purus sed dapibus. Nulla in viverra quam justo.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                              
                            </li>
                            <li>
                            
                                <p>
                                    <i class="ifc-history"></i>
                                    History 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-history"></i>
                                    <strong>History</strong>
                                    
<!--                                     <p>Quisque id sapien sed urna lobortis rutrum eu sed enim. Duis orci velit, pulvinar eu nisl non porta lacus.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                               
                            </li>
                            <li>
                            
                                <p>
                                    <i class="ifc-musical"></i>
                                    Music 
                                </p>
                                
                                <div class="interest-details">
                                	
                                    <i class="ifc-musical"></i>
                                    <strong>Music</strong>
                                    
<!--                                     <p>Curabitur gravida pharetra augue sit amet tincidunt. Morbi a mi elementum, vehicula felis nec commodo.</p> -->
                                    
                                </div><!-- end .interest-details -->
                                                               
                            </li>
                        </ul>
                        
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                
            </div><!-- end #skils -->
            
<!--             <div id="portfolio"> -->
            	
<!--                 <div class="row"> -->
<!--                     <div class="span12 text-center"> -->
                        
<!--                         <div class="headline"> -->
                            
<!--                             <p><span>My latest work</span></p> -->
<!--                             <h1>Portfolio</h1> -->
                            
<!--                         </div>end .headline -->
                        
<!--                     </div>end .span12 -->
<!--                 </div>end .row -->
                
<!--                 <div class="row"> -->
<!--                 	<div class="span12"> -->
                    	
<!--                         <div class="portfolio-filter"> -->
                        	
<!--                             <ul> -->
<!--                                 <li> -->
<!--                                     <a class="active" data-filter="*" href="#">All</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a data-filter=".term-1" href="#">Graphic design</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#" data-filter=".term-2">Logo</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#" data-filter=".term-3">Animations</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#" data-filter=".term-4">Photography</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
                            
<!--                         </div>end .portfolio-filter -->
                        
<!--                     </div>end .span12 -->
<!--                 </div>end .row -->
                
<!--                 <div class="row"> -->
<!--                 	<div class="span12"> -->
                    	
<!--                         <ul class="portfolio-items fixed"> -->
<!--                     		<li class="item term-4"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-1.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
 
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-1.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Night</h3> -->
<!--                                         <p>Photography</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                             <li class="item term-3"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-2.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
                                            	
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-2.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Ship</h3> -->
<!--                                         <p>Animation</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                             <li class="item term-1"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-3.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
                                            	  
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-3.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Street</h3> -->
<!--                                         <p>Graphic Design</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                             <li class="item term-1"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-4.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
                                                
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-4.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Beatiful Field</h3> -->
<!--                                         <p>Photography</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                             <li class="item term-2"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-5.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
                                            
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-5.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Trees</h3> -->
<!--                                         <p>Logo</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                             <li class="item term-3"> -->
                            	
<!--                                 <div class="portfolio-item"> -->
                                
<!--                                     <div class="portfolio-item-preview">			 -->
                                    
                                        
<!--                                         <img src="_content/portfolio/370x370-6.png" alt=""> -->
                                        
                                        
<!--                                         <div class="portfolio-item-overlay"> -->
                                        
<!--                                             <div class="portfolio-item-overlay-actions"> -->
                                            	
<!--                                                 <a class="magnificPopup-gallery portfolio-item-zoom" href="_content/portfolio/370x370-6.png">+</a> -->
                                                
<!--                                                 <a class="ajax-popup-link portfolio-item-link" href="project.jsp">&gt;</a> -->
                                                
<!--                                             </div>end .portfolio-item-overlay-actions -->
                                        
<!--                                         </div>end .portfolio-item-overlay -->
                                    
<!--                                     </div>end .portfolio-item-preview -->
                                    
<!--                                     <div class="portfolio-item-description"> -->
                                    
<!--                                         <h3>Vintage Car</h3> -->
<!--                                         <p>Animation</p> -->
                                    
<!--                                     </div>end .portfolio-item-description -->
                                
<!--                                 </div>end .portfolio-item -->
                                
<!--                             </li> -->
<!--                         </ul> -->
                        
<!--                         <p class="text-center"> -->
<!--                         	<a class="btn text-uppercase" href="#">Load More Items</a> -->
<!--                         </p> -->
                        
<!--                     </div>end .span12 -->
<!--                 </div>end .row -->
                
<!--             </div>end #portfolio -->
            
            <div class="parallax" id="contact" style="background-image:url(_content/backgrounds/1920x1000.jpg);">
            	
                <div class="parallax-content" style="padding:110px 0;">
				
					<div class="parallax-overlay" style="background-image:url(_content/backgrounds/pattern.png);"></div>
					
					<div class="parallax-content-inner">
                    
                    	<div class="row">
                            <div class="span12 text-center">
                                
                                <div class="headline">

                                    <h1>Contact</h1>
                                    
                                </div><!-- end .headline -->
                                
                            </div><!-- end .span12 -->
                        </div><!-- end .row -->
                        
                        <div class="row">
                        	<div class="span4">
                            	
                                <h2 class="text-uppercase">Get in touch</h2>
                                
                                <p>Am always connected to the world 24 X 7. Feel free to keep in touch with me.</p>
                                
                                <br>
                                
                                <h2 class="text-uppercase">My Address</h2>
                                
                                <ul class="contact-info">
                                	<li>
                                    	<i class="ifc-home"></i>
                                        #5 Arun Nagar, Periyakulathuvancherry, Paranipudhur, Iyapanthangal.<br/>
                                        Chennai.  600122
                                    </li>
                                    <li>
                                    	<i class="ifc-phone2"></i>
                                        91.99.52592624
                                    </li>
                                    <li>
                                    	<i class="ifc-message"></i>
                                        <a href="mailto:office@yoursite.com">sathya@mdautomations.com</a>
                                    </li>
                                </ul>
                                
                                <h2 class="text-uppercase">I'm also on social networks</h2>
                                
                                <div class="social-media fixed">
                                	
                                    <a href="www.facebook.com/sathya.AS" class="facebook-icon social-icon">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    
                                    <a href="https://twitter.com/MDAUTOMATIONS" class="twitter-icon social-icon">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    
                                    <a href="https://plus.google.com/u/0/100547981075542084222/posts" class="googleplus-icon social-icon">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                    
                                    <a href="sathyanarayanan.anbu.ad" class="linkedin-icon social-icon">
                                        <i class="fa fa-skype"></i>
                                    </a>
                                    
                                </div>
                                
                            </div><!-- end .span4 -->
                            <div class="span8">
                            	
                                <h2 class="text-uppercase">Send a message</h2>
                                
                                <form class="fixed" id="contact-form"  name="contact-form" method="post" > 
                                    <fieldset>
                                        
                                        <div id="formstatus"></div>
                                                
                                        <input class="span8" id="name" type="text" name="name" value="" placeholder="enter your full name here">
                                    
                                        <input class="span8" id="email" type="text" name="email" value="" placeholder="your email address">
                                        
                                          <input class="span8" id="phone" type="text" name="phone" value="" placeholder="your phone number">
                                        
                                        <textarea class="span8" id="message" name="message" rows="7" cols="25" placeholder="message"></textarea>
                                        
                                        <input id="buttons" type="button"  value="Send!" onclick="calsubmit()">
                                           
                                    </fieldset>
                                </form>
                                
                            </div><!-- end .span8 -->
                        </div><!-- end .row -->
                    
                    </div><!-- end .parallax-content-inner -->
                
                </div><!-- end .parallax-content -->
                
                 <div id="footer">
		
                <!-- /// FOOTER     ///////////////////////////////////////////////////////////////////////////////////////// -->
        
                    <div class="row">
                        <div class="span12">
                            
                            <p class="text-center last">Copyright &copy; 2014 MD Automations</p>
                            
                        </div><!-- end .span12 -->
                    </div><!-- end .row -->
                    
                <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
        
                </div><!-- end #footer -->
                
            </div><!-- end #contact -->
            
		<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

		</div><!-- end #content -->
		
	</div><!-- end #wrap -->
    
    <a id="back-to-top" href="#">
    	<i class="ifc-up4"></i>
    </a>


    <!-- /// jQuery ////////  -->
	<script src="_layout/js/jquery-2.1.0.min.js"></script>
  
    <!-- /// ViewPort ////////  -->
	<script src="_layout/js/viewport/jquery.viewport.js"></script>
    
    <!-- /// Easing ////////  -->
	<script src="_layout/js/easing/jquery.easing.1.3.js"></script>

    <!-- /// SimplePlaceholder ////////  -->
	<script src="_layout/js/simpleplaceholder/jquery.simpleplaceholder.js"></script>

    <!-- /// Fitvids ////////  -->
    <script src="_layout/js/fitvids/jquery.fitvids.js"></script>
    
    <!-- /// Superfish Menu ////////  -->
	<script src="_layout/js/superfish/hoverIntent.js"></script>
    <script src="_layout/js/superfish/superfish.js"></script>
    
    <!-- /// bxSlider ////////  -->
	<script src="_layout/js/bxslider/jquery.bxslider.min.js"></script>
    
   	<!-- /// Magnific Popup ////////  -->
	<script src="_layout/js/magnificpopup/jquery.magnific-popup.min.js"></script>
    
    <!-- /// Isotope ////////  -->
	<script src="_layout/js/isotope/isotope.pkgd.min.js"></script>
    <script src="_layout/js/isotope/imagesloaded.pkgd.min.js"></script>
    
    <!-- /// Parallax ////////  -->
	<script src="_layout/js/parallax/jquery.parallax.min.js"></script>
	
	<!-- /// EasyPieChart ////////  -->
	<script src="_layout/js/easypiechart/jquery.easypiechart.min.js"></script>
    
    <!-- /// Easy Tabs ////////  -->
    <script src="_layout/js/easytabs/jquery.easytabs.min.js"></script>	
	
    <!-- /// Waypoints ////////  -->
    <script src="_layout/js/waypoints/waypoints.min.js"></script>
    <script src="_layout/js/waypoints/waypoints-sticky.min.js"></script>
    
    <!-- /// Form validate ////////  -->
    <script src="_layout/js/jqueryvalidate/jquery.validate.min.js"></script>
    
	<!-- /// Form submit ////////  -->
    <script src="_layout/js/jqueryform/jquery.form.min.js"></script>
    
    <!-- /// gMap ////////  -->
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="_layout/js/gmap/jquery.gmap.min.js"></script>
    
    <!-- /// Scrollspy ////////  -->
    <script src="_layout/js/scrollspy/scrollspy.min.js"></script>

	<!-- /// Custom JS ////////  -->
	<script src="_layout/js/custom.js"></script>	

</body>
</html>