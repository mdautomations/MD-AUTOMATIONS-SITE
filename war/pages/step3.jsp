<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="initial-scale=1.0">
      <meta name="robots" content="noindex, nofollow" />
      <title>MD AUTOMATIONS - Project Delivery</title>
      <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="../registerstyle/css/main.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <!-- bin/jquery.slider.min.css -->
	<link rel="stylesheet" href="css/jslider.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.blue.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.plastic.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.plastic.css" type="text/css">
  <!-- end -->

	<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
	
	<!-- bin/jquery.slider.min.js -->
	<script type="text/javascript" src="js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="js/tmpl.js"></script>
	<script type="text/javascript" src="js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="js/draggable-0.1.js"></script>
	<script type="text/javascript" src="js/jquery.slider.js"></script>
  <!-- end -->
	
	<style type="text/css" media="screen">
	  body { background: #EEF0F7; }
	 .layout { padding: 50px; font-family: Georgia, serif; }
	 .layout-slider { margin-bottom: 60px; width: 50%; }
	 .layout-slider-settings { font-size: 12px; padding-bottom: 10px; }
	 .layout-slider-settings pre { font-family: Courier; }
	</style>
   </head>
   <body>
      <div id="wrapper">
         <nav>
            <ul class="top-nav">
               <li class="visited"><a href="/portal">1. User Name</a></a></li>
               <li class="visited"><a href="/accountsetup">2. Account Setup</a></a></a></li>
               <li class="active"><a href="/projectdelivery">3. Project Delivery</a></li>
            </ul>
            <ul class="top-nav-mb">
               <li class="visited"><a href="/portal">Step 1</a></a></li>
               <li class="visited"><a href="/accountsetup">Step 2</a></a></a></li>
               <li class="active"><a href="/projectdelivery">Step 3</a></li>
            </ul>
         </nav>
         <section class="step-3">
         <h5>Project Setup</h5>
         <h2>Implement your Ideas on Project</h2>
         <div class="container">
            <div class="frm-grp">
               <div class="grp-name">
                  <p>Project / Course Title</p>
                  <input type="text" id="projectcourse" placeholder="Project / Course Name" class="inpt-box" onblur="store();">
               </div>
                <div class="grp-exp">
              		Take up Project<input type="radio" class="inpt-box" id="projectchoice" name="select" > 
               </div>
               <div class="grp-sec">
              		Take up Course<input type="radio" class="inpt-box" id="coursechoice" name="select" >
               </div>
               <div class="grp-card">
                  <p>Where did you heared about us?</p>
                  <input type="text" placeholder="" class="inpt-box" id="referal" onblur="store();">
               </div>
               <div class="grp-card">
                  <p>Visiting us on </p>
                  <input type="text" placeholder="dd/mm/yyyy" class="sm-input" id="date" onblur="store();">
               </div>
               <div class="grp-card">
                  <p>Your Budget</p>
                  <br/>
                   <div class="layout-slider" style="width: 100%">
       <span style="display: inline-block; width: 400px; padding: 0 5px;"><input id="Slider1" type="slider" name="price" value="30000.5;60000" /></span>
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#Slider1").slider({ from: 1000, to: 50000, step: 200, smooth: true, round: 0, dimension: "&nbsp;INR", skin: "plastic" });
    </script>
<!--                   <input type="text" placeholder="$$$$$" class="sm-input" id="budget" onblur="store();"> -->
               </div>
             
               <div class="grp-sec">
                  <img id="loaddata" src="../images/newLayout/spinner.gif" style=" height: 75px; width: 75px; display:none">
               </div>
               <div class="btn-grp">
                  <button class="purchase" id="signup">Sign Up</button>
                  <p style="visibility: hidden;">$300.00<a>Per Month</a></p>
               </div>
               <div class="divider"></div>
               <p>By Clicking "Sign up", you agree to our <a class="terms">terms.</a></p>
            </div>
            <div class="features">
               <ul>
                  <h4>Have a look at our Services</h4>
                  <li><a href="/courses" style="cursor:pointer">Courses We Offer</a></li>
                  <li><a href="/international-certifications-training" style="cursor:pointer">International Certifications Training</a></li>
                  <li><a href="/courses" style="cursor:pointer">Project Domains</a></li>
               </ul>
               <ul>
                  <h4>What You're Getting</h4>
                  <li><a>24/7 Live Project Support</a></li>
                  <li><a>High-end Technology</a></li>
                  <li><a>All Reports, PPT's and Guides</a></li>
                  <li><a>All Softwares and Hardwares associated to your Project.</a></li>
               </ul>
               <ul>
                  <h4>What we expect</a></h4>
                  <li><a>Good Technical Stuff.</a></li>
                  <li><a>Ability to think and effective decision making.</a></li>
                  <li><a>Proper Communication Medium</a></li>
               </ul>
            </div>
         </div>
<!--          <img class="brand" src="../images/brand.png"> -->
<img class="brand" src="../assets/img/MDLOG.png" style="height: 12%;width: 14%;">
         </secton>
      </div>
      
      <!-- Terms-Modal -->
      <div class="modal-wrapper"> </div>
         <div class="modal-content">
            <div class="modal-header">
               <h3>Terms</h3>
               <div class="btn-cls">x</div>
            </div>
            <div class="modal-body">
               <h4>PLEASE READ THESE TERMS OF USE CAREFULLY BEFORE USING THE SITE.</h4>
               <p>MD Automations greets you for joining with us. By reading this, it means you agree to our terms and conditions.</p>
               <p>MD Automations gives the best support to the students / research scholars who undergo projects with us. In this case, MD Automations is no way responsible, if the students loses or damages any hardware and software materials after getting the project delivered.</p>
               <p>A Student has to inform atleast minimum period of 2 days prior, in case of any materials (PPT, Abstracts, Reports) required. Requesting us at the end of the moment will make us uncomfortable to take your work at busy schedules.</p>
               <p>Documents support associated to the projects will be given by MD AUtomations to the best level. But a student cannot expect 100% document work as it is from us.</p>
            </div>
         </div>
<!--       <script src="../registerjs/jquery-1.10.2.js"></script> -->
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

      <script src="../registerjs/action.js"></script>
   </body>
</html>