<!DOCTYPE html>
<!-- saved from url=(0028)http://my.adaptiveyou.com/me -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>AdaptiveYou - ME</title>
    <!-- Bootstrap -->
    <link href="http://my.adaptiveyou.com/css/AY2.0/bootstrap.css" rel="stylesheet" media="screen">
    <link href="http://my.adaptiveyou.com/css/AY2.0/style.css" rel="stylesheet" media="screen">
    <link href="http://my.adaptiveyou.com/css/AY2.0/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="http://my.adaptiveyou.com/css/AY2.0/sharing-popup.css" rel="stylesheet" media="screen">
	<link href="http://my.adaptiveyou.com/css/AY2.0/jquery-ui.css" rel="stylesheet" media="screen">


<style type="text/css">
@media (max-width: 1299px) {
 .single_user_photo{
 min-height: 181px !important;
 }
}
	#badge_image_sample{
max-height:500px;
max-width:500px;
height:auto;
width:auto;
min-height:200px;
min-width:200px;
}
#badge_image_cropper{

max-height:600px;
max-width:600px;
height:auto;
width:auto;
min-height:200px;
min-width:200px;
padding: 28px 33px;
padding-left: 1px !important;
padding-top: 1px !important;
padding-right: 0px !important;
padding-bottom: 15px !important;
}

.popup {
background: #fff;
width: 450px;
margin: 0 auto;
position: fixed;
top: 40px;
top: 5%;
left: 50%;
margin-left: -242px;
background: #fff;
border: 1px solid #aaa;
padding: 30px 30px;
box-shadow: 0px 0px 10px #ccc;
-moz-box-shadow: 0px 0px 10px #ccc;
-webkit-box-shadow: 0px 0px 10px #ccc;
z-index: 2000;
}
#imagecrop
{
display:none;
padding-top: 29px;


}
</style>

<script type="text/javascript" charset="UTF-8" src="./AdaptiveYou - ME_files/javascript.js"></script><script src="./AdaptiveYou - ME_files/opt_content.js"></script></head>
<body data-twttr-rendered="true">


<style>
	#voice-box {
	  position: fixed;
	  margin: 0 auto;
	  top: 0;
	  z-index:999999;
	  text-align: center;
	  left : 45%;
	  display:none;
	}
	
	#voice-box span { 
	 background:#fffed5;
	 font-size: 12px;
	 color: #000;
	 font-weight: bold;
	 padding: 10px 12px 3px 12px;
	 line-height: 26px;
	 border: solid 1px #cfcd59;
	 border-radius:0px 0px 5px 5px
	 
	}
	
	
</style>

<!--  Start fixed navbar --> 

<div id="voice-box" style="display: none;">
		<p>
			<span id="statusMessage">Saving changes...</span>
		</p>
	</div>
    <div class="navbar navbar-fixed-top navbar-inverse">
    <!--  Start dropdown U picker menu -->      
        		<div class="u-picker"><div class="btn-group pull-left"><button data-toggle="dropdown" class="btn btn-large dropdown-toggle btn-inverse"><span class="caret" style="margin-bottom:10px;"></span></button><ul class="dropdown-menu organization_list"><li><a onclick="changeCompany(&#39;fd7f3837-fd5d-4621-aa87-e3eda5cd1c65&#39;);"><span>Ethiraj College<span></span></span></a></li><li><a onclick="changeCompany(&#39;f3b0c663-aa4b-492b-b2b4-3b8199ae3a7b&#39;);"><span>FULL CX<span></span></span></a></li><li><a onclick="changeCompany(&#39;fdc0c85f-ca2d-4d25-9bc9-e5b05f1cb2e9&#39;);"><span>KIETU<span></span></span></a></li><li><a onclick="changeCompany(&#39;d6230a48-97df-4aec-99ee-b904b7abf96a&#39;);"><span>Kids U-2nd Grade<span></span></span></a></li><li><a onclick="changeCompany(&#39;91c7ed35-c575-49ca-84cc-21be9b5e9b5d&#39;);"><span>TrainU<span></span></span></a></li></ul> </div></div>
    <!--  End dropdown U picker menu --> 	
    
      <div class="navbar-inner">
        <div class="container-fluid">
        
        
          <div class="nav-collapse">
          
<!--  Start nav menu -->                 
            <ul class="nav header_tabs">
              <li id="me_page" class="active">
                <a href="./AdaptiveYou - ME_files/AdaptiveYou - ME.html">
  				<span class="pull-left">FULL</span> 
                  <span class="badge badge-important pull-right all_count" style="">1</span>
                  <span class="clearfix"></span>
                </a>
              </li>
              <li id="earnBadges_page" class="">
                <a href="http://my.adaptiveyou.com/challenges">
                  Challenges
                </a>
              </li>
              <li id="others_page">
                <a href="http://my.adaptiveyou.com/peers">
              	Peers
                </a>
              </li>
              <li style="display:none">
                <a href="http://my.adaptiveyou.com/degrees.html">
                  Degrees
                </a>
              </li>
              <li>
                <a href="http://my.adaptiveyou.com/store">
                 <span class="pull-left">Store</span> 
                  <span class="badge badge-important pull-right auction_count_header" auction_count_header_val="0" style="display: none;"></span>
                  <span class="clearfix"></span>
                </a>
              </li>
            </ul>
<!--  End nav menu -->                   
  
<!--  Start Support - My Account -->                  
            <ul class="nav pull-right" id="points-time-logout">
            <li id="headerNF" data-toggle="modal" data-target="#new-feature">
				<a>
				<span>
				<i class="icon-bullhorn" style="color:#FFFFFF;font-size:13px;"></i>
				What's New?
				</span>
				</a>
				</li>
              <li style="display:none"><a href="http://my.adaptiveyou.com/me#">Support</a></li>
              <li class="points-score user_email_id" data-toggle="tooltip" data-placement="bottom" title="Your points"><span>0</span></li>
<!--               <li class="time-score" data-toggle="tooltip" data-placement="bottom" title="Total time you've spent learning"><span>260</span></li> -->
              <li class="dropdown" data-toggle="tooltip" data-placement="bottom" title="Signout">
                <a href="http://my.adaptiveyou.com/me#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-off"></i><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li style="display:none">
                  	<!-- Button to trigger modal -->	
                  	<a href="http://my.adaptiveyou.com/me#myModal" data-toggle="modal"><i class="icon-user"></i> My Account</a>                                
                  </li>
  				<!-- <li class="divider"></li> -->
                  <li><a href="http://my.adaptiveyou.com/logout"><i class="icon-off"></i> Sign Out</a></li>
                </ul>
              </li>
            </ul>
<!--  End Support - My Account -->   

         	</div><!--  End nav-collapse -->  
        </div><!-- End container-fluid -->
      </div><!-- End navbar-inner -->
    </div><!-- End navbar -->        
<!--  End fixed navbar -->   

 <div class="modal hide fade" id="new-feature" tabindex="-1" data-backdrop="static" data-keyboard="true" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        	<div class="modal-body" style="border-radius: 6px;">
        		<button onclick="$(&#39;#new-feature&#39;).modal(&#39;hide&#39;);" type="button" class="close" aria-hidden="true"><i class="icon-remove"></i></button>
        		<img src="./AdaptiveYou - ME_files/ch-some-one.png">
        	</div>
        </div>

<div id="account_information" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button> -->
    <h3 id="myModalLabel">My Account</h3>
  </div>
	<div class="modal-body">
		<form class="form-horizontal" action="" method="POST">
		  <fieldset>
		    <div id="legend">
		      <legend class="">Username</legend>
		    </div>
		    <div class="control-group">
		      <!-- Username -->
		      <label class="control-label" for="username">Username</label>
		      <div class="controls">
		        <input type="text" disabled="disabled" id="username" name="username" placeholder="" class="input-xlarge" value="josh@fullcreative.com">
		      </div></div>
		      <div class="control-group">
			      <label class="control-label" for="firstName">FirstName</label>
			      <div class="controls">
			        <input type="text" id="firstName" name="firstName" placeholder="" class="input-xlarge" value="">
			      </div>
		      </div>
		      <div class="control-group">
			      <label class="control-label" for="lastName">LastName</label>
			      <div class="controls">
			        <input type="text" id="lastName" name="lastName" placeholder="" class="input-xlarge" value="">
			      </div>
		      </div>
		    
			 <div id="legend">
			   <legend class="">Password</legend>
			 </div>
		    <div class="control-group">
		      <!-- Password-->
		      <label class="control-label" for="password">Password</label>
		      <div class="controls">
		        <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
		      </div>
		    </div>
		    <div class="control-group">
		      <!-- Password-->
		      <label class="control-label" for="confirm-password">Confirm Password</label>
		      <div class="controls">
		        <input type="password" id="confirm-password" name="confirm-password" placeholder="" class="input-xlarge">
		      </div>
		    </div>
		    
		 
		  </fieldset>
		</form>      
	</div>
	<div class="modal-footer">
       <button class="btn btn-primary" onclick="savePassword()">Save changes</button>
     </div>
</div>


 <!-- Share Badge Pop-up -->
 <div id="fb-root" class=" fb_reset"><script async="" src="./AdaptiveYou - ME_files/all.js"></script><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe name="fb_xdm_frame_http" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_http" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="./AdaptiveYou - ME_files/oDB-fAAStWy.html" style="border: none;"></iframe><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="./AdaptiveYou - ME_files/oDB-fAAStWy(1).html" style="border: none;"></iframe></div></div></div>
        <div id="share-popup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 	<!-- <div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
    	
    </div>
  <div class="modal-body" id="share-body">

  
  </div>
  <div class="modal-footer" id="share-footer">
    
  </div>
   <g:plusone id="gshare" href=""   size="tall" ></g:plusone>
   <div id="pop" style="margin-left: 193px!important;margin-top: -128px!important;position: absolute;display:none;">
	    <div class="popover fade right in" style="top: 12.5px; left: 294px; display: block;"><div class="arrow"></div>
			<h3 class="popover-title">Share With a Friend:</h3>
				<button type="button" class="closed close" aria-hidden="true" style="margin-top: -30PX;margin-left: 224px!important;position: absolute;">
				<i class="icon-remove"></i></button>
				<div class="popover-content">
				<input id="to" type="text" placeholder="Recipients" value=""><br>
				&nbsp;&nbsp;&nbsp;&nbsp;<button id="send_email" class="btn btn-small btn-primary" type="button" >Send e-mail</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	<button class="btn btn-small closed" type="button">Cancel</button>
	 	</div>
 	</div>
 
    </div> -->
  </div>
	
<script src="./AdaptiveYou - ME_files/commonFunctions.js"></script>
<script src="./AdaptiveYou - ME_files/popup.js"></script>


	<!-- form_wrapper -->  
		
		
		

<!--  Start main content wrapper -->    
  <div class="container main-content">
    <div class="row">	
    
<!--  Start sidebar holder -->    
      <div class="span4 affix">
      	<div class="well">
	        <div class="sidebar-nav">
        		<img src="./AdaptiveYou - ME_files/user-image.png" class="single_user_photo" style="min-widdth:250px;min-height:250px;border-radius: 4px;" id="149d9044-225e-47aa-b315-158bcc9e3291">
	         	 <ul id="me_side_bar" class="nav nav-pills nav-stacked" style="margin-top:10px;">
		            <li class="side_bar_profile side_bar active">
		              <a data-toggle="tooltip" title="first tooltip">
		                <i class="icon-user"></i> 
		                Learning
		              </a>
		            </li>
		            <li class="side_bar_notification side_bar ">
		              <a>
		                <span class="">
		                  <i class="icon-bell-alt"></i> Notifications
		                  <span class="badge badge-important pull-right notification_count">1</span>
		                </span>
		              </a>
		            </li>
		              <li class="side_bar_purchased side_bar ">
		              <a>
		                <span class="">
		                  <i class="icon-shopping-cart"></i> Purchases
		                  <span style="display:none" class="badge badge-important pull-right"></span>
		                </span>
		              </a>
		            </li>
		            <li class="side_bar_message side_bar">
		              <a>
		                <span>
		                  <i class="icon-envelope-alt" style="opacity:.5;"></i> Messages
		                  
		                </span>
		              </a>
		            </li> 
		            <li style="display:none" class="side_bar ">
		              <a>
		                <span>
		                	<i class="icon-lightbulb "></i>
		                 	 My Creations
		                  <span class="pull-right label-default"></span>
		                </span>
		              </a>
		            </li>
		            <li class="settings side_bar ">
		              <a>
		                <span>
		                	<i class="icon-cog "></i>
		                 	 Settings
		                </span>
		              </a>
		            </li>
	              </ul>
        	  </div><!-- End well --> 
           </div><!-- End sidebar-nav --> 
        </div><!-- End span4 affix --> 
<!--  End sidebar holder -->          

<!--  Start main content area -->        
       
<!--        <div id="migration" style="position: absolute;left: 40%;top: 30%;background: rgba(235, 235, 144, 0.62);padding: 15px;font-size: 25px;display:none;">Sorry, we are in the process of migration!</div> -->
        <div class="span12 offset4 challanges_div" style="">
		<h1><span id="me-pageTitle">Working On</span> 
			<div class="btn-group pull-right" id="switch_workingon_completed">'+
				<button id="working_on_badges" class="btn active" data-original-title=""><i class="icon-refresh"></i> <span id="workingOnSpan">77</span></button>
				<button id="pending_badges" class="btn" data-original-title=""><i class="icon-time"></i> <span id="pendingSpan">0</span></button>
				<button id="completed_badges" class="btn" data-original-title=""><i class="icon-ok"></i> <span id="completedSpan">28</span></button>
			</div>
		</h1>
		<span class="divider">&nbsp;</span>
	</div>
       
	 
      
<!--  Start badge thumbs wrapper  -->          
           
    <center>
      	  	<div id="imagecrop" class="modal hide fade">
      	  		 <button type="button" id="image_crop_close" class="close" style="margin-top: -23px;margin-right: 10px;"><i class="icon-remove"></i></button>
				<div id="badge_image_cropper">
			<img src="" id="badge_image_sample">
					<center>
						<input type="button" class="grn_btn" style="margin-top: 16px;padding: 5px;width: 90px;" id="profile_image_cropper_act" value="Select">
					</center>
				</div> 
			 
			</div>
			</center>

  <span id="hour_holder"></span>
        
        </div>
        <!-- Share Badge Pop-up -->
        <div id="share-popup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
    	
    </div>
  <div class="modal-body" id="share-body">

  
  </div>
  <div class="modal-footer" id="share-footer">
    
  </div>
 <g:plusone id="gshare" href="http://jochangestoadaptiveu.appspot.com" size="tall"></g:plusone>
 <div id="pop" style="margin-left: 193px!important;margin-top: -128px!important;position: absolute;display:none;">
    <div class="popover fade right in" style="top: 12.5px; left: 291px; display: block;"><div class="arrow"></div>
	<h3 class="popover-title">Share With a Friend:</h3>
	<button type="button" class="closed close" aria-hidden="true" style="margin-top: -30PX;margin-left: 224px!important;position: absolute;">
	<i class="icon-remove"></i></button>
	<div class="popover-content">
	<input id="to" type="text" placeholder="Recipients" value=""><br>
&nbsp;&nbsp;&nbsp;&nbsp;<button id="send_email" class="btn btn-small btn-primary" type="button">Send e-mail</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <button class="btn btn-small closed" type="button">Cancel</button>
 </div>
 </div>
 
    </div>
  </div>
  
  <span id="back_to_top" class="btn" style="display: none;"><i class="icon-arrow-up icon-4"></i></span>
  
</div>

   <div id="alert_popup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
<div class="modal-body"> 
<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
<br><br>
<div> If you empty the Description in Pending, Will restore the previous Description </div>

</div>
<div class="modal-footer" id="share-footer">
      <a class="btn btn-green btn-aln " data-dismiss="modal" aria-hidden="true">Got It !</a>
   </div>
</div>




 <div class="footer-container" style="position: fixed;">
       <div>AdaptiveYou � 2014 All rights reserved.</div>
  </div> 

<!-- Share Badge Pop-up -->
  
         <div id="backgroundPopup" style="display:none;"></div>
         <div class="new_popup" style="display:none;"><div class="new_u_close" id="close">X</div></div>
           <a href="javascript: showFeedbackWin();void(0);" style="position: fixed; right: 0px; top: 25%; display: block; z-index: 99; " id="looptodo_feedback_btn">

	</a>
    <!--  Page 1 -->
	<div id="thank-you-wrapper">
		<div class="popup_close"></div>
	</div>
    
    <script src="./AdaptiveYou - ME_files/bootstrap.min.js"></script>
  
    <div class="tooltipContent display_none" style="top: 270px; left: 1125px;"><img src="./AdaptiveYou - ME_files/Pu_oOm8Ulc7U-eTdDB9hireVoQ4y59kCKo7m0M-bMfiq9-jSToRmWH0HoMZ1cVq_Zl9MoP4Ob4gquLsqJsJJX5kffROVHrpTl5c" class="othersPopupImg"><label class="othersPopupLable"><a target="_blank">Saranya</a></label></div>
  

	<div id="fb-root"></div></body></html>