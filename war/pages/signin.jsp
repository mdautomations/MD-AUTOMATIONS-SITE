<!DOCTYPE html>
<html lang="en">
    <head>
        <title>MD AUTOMATIONS</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Creative CSS3 Animation Menus" />
        <meta name="keywords" content="menu, navigation, animation, transition, transform, rotate, css3, web design, component, icon, slide" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="../coursescss/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../coursescss/css/style8.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'/>
        <link href="../assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../assets/css/main.css" rel="stylesheet">

    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <script src="../assets/js/modernizr.custom.js"></script>
    </head>
    <body>
    <nav class="menu" id="theMenu">
		<div class="menu-wrap">
<!-- 			<h1 class="logo"><a href="/home">MD AUTOMATIONS</a></h1> -->
			<i class="fa fa-arrow-right menu-close"></i>
			<a href="/home">Home</a>
			<a href="/services">Services</a>
			<a href="/courses">Courses</a>
			<a href="/about">About</a>
			<a href="#contact">Contact</a>
			<a href="https://www.facebook.com/mdautomations?fref=ts"><i class="fa fa-facebook"></i></a>
			<a href="https://twitter.com/MDAUTOMATIONS"><i class="fa fa-twitter"></i></a>
			<a href="mailto:sales@mdautomations.com"><i class="fa fa-envelope"></i></a>
		</div>
		
		<!-- Menu button -->
		<div id="menuToggle"><i class="fa fa-bars"></i></div>
	</nav>
	<div id="sp" style="height: 122px;">
		<div class="container">
			<div class="row">
				<img src="../assets/img/MDLOG.png" style="height: 100px;">
			</div><!-- row -->
		</div><!-- /container -->
	</div>
        <div class="container">
            <h1>You are at the right place !</h1>
        
           <div class="login_wrapper">
				<div class="login_holder">
<!-- 					<h3 class="login_heading">Log In</h3>	 -->
					<form id="loginForm" name="loginForm" action="/submitAYDetails?from=login" method="post">
						<div class="external_login_holder">
							<div onclick="onclickOfFacebookLogin()" class="facebook_signin_btn">Log In  With Facebook</div>
							<div onclick="onclickforlogin()" class="google_signin_btn">Log In  With Google</div>
							<div class="clear_all"></div>
						</div>
						<ul class="sign_in">
							<!-- error_field -->
							<li><input class="em" type="text" value="" name="email" id="email" onfocus="hidePlaceholder()"></li>
							<label class="placeholder-home-login" for="username" style="opacity: 0.5; z-index: 1;">Email</label>
							<li><input class="pw" type="password" name="password" id="password" value=""></li>
							<label class="placeholder-home-login" for="password" style="opacity: 0.5; z-index: 1;">Password</label>
							<li><input type="hidden" id="currentDate" name="currentDate"></li>
							<li>
								<div class="clear_all"></div>
								<div class="global_btn2_lt" style="margin-left: 30px;">
									<center><input class="global_btn2_rt signin_btn" type="submit" value="Log In" onclick="return callSubmit()"></center>
								</div>
								<!-- <div class="forget_pwd_holder">
									<span class="get_pw">I forgot my password!</span>
								</div> -->
							</li>
							<li class="clear_all"></li>
						</ul>
					</form>
					
					<!-- sign_in -->
                    
					<ul class="fg_pw">
						<li><h3 class="forgot_header">Forget your password?</h3></li>
						<li><p>No worries, it happens. Just enter your email below and we'll send you reset instructions</p></li>
						<li><label>Email</label></li>
						<li><input class="em" type="text" value="" id="lostemail" name="lostemail" onfocus="removeClass();"></li>
						<li style="margin-bottom: 20px;">
							<input type="radio" name="adminPwd" id="adminPwd" checked="checked" value="admin">Admin
							<input type="radio" name="adminPwd" id="staffPwd" value="staff"> Staff
							<br>
						</li>
						<li><div class="global_btn2_lt">
						<input class="global_btn2_rt signin_btn" type="button" value="Send me reset instructions" onclick="callResetPassword()"></div><div class="clear_all"></div></li>
						<li class="last"><span class="back_signin">Back to Sign In</span></li>
					</ul><!-- fg_pw -->
                    
					<ul class="acc_de" style="display:none" id="acc_de">
						<li><label>Your Account has been Deactivated!</label></li>
						<li><p>Thanks for using SetMore. To reactivate send a mail to help@setmore.com</p></li>
					</ul><!-- fg_pw -->
					<!--  </form>-->
				</div><!-- login_holder -->

				</div>
			</div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
         <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/main.js"></script>
	<script src="../assets/js/masonry.pkgd.min.js"></script>
	<script src="../assets/js/imagesloaded.js"></script>
    <script src="../assets/js/classie.js"></script>
	<script src="../assets/js/AnimOnScroll.js"></script>
	<script src="../js/jquerylogin.js"></script>
	<script>
		new AnimOnScroll( document.getElementById( 'process' ), {
			minDuration : 0.4,
			maxDuration : 0.7,
			viewportFactor : 0.2
		} );
	</script>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-48870092-1', 'mdautomations.com');
  ga('send', 'pageview');
  window.onload = function () {
      var script = document.createElement("script");
      script.type = "text/javascript";
      script.src = "http://www.telize.com/jsonip?callback=DisplayIP";
      document.getElementsByTagName("head")[0].appendChild(script);
  };
  function DisplayIP(response) {
	   
	   var ipaddress = response.ip;
	   var dates = new Date();
	   ga('send', 'event', ipaddress, document.location.pathname,Date().toLocaleString());
  }
</script>
    </body>
</html>