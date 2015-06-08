<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="robots" content="noindex, nofollow" />
    <link rel="shortcut icon" href="../assets/ico/favicon.png">
    <title>MD AUTOMATIONS</title>
    <script src="../js/vendor/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/jquery.dataTables.min.js" ></script> 
	<link href="../css/dataTables_jui.css" type="text/css" rel="stylesheet" />
	<link href="../css/dataTable.css" type="text/css" rel="stylesheet" /> 
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/css/main.css" rel="stylesheet">
     <link href="../assets/css/new.css" rel="stylesheet">
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    <script src="../assets/js/modernizr.custom.js"></script>
    <style type="text/css">

#uniquePin_textbox  {
		   background: white;
		   border: 1px solid #DDD;
		   border-radius: 5px;
		   box-shadow: 0 0 5px #DDD inset;
		   color: #666;
		   padding: 5px 10px;
		   width: 165px;
		   outline: none;
}

ul  {
  		   list-style: none;
	}	

#dataIn {

 		   border: 2px solid rgb(184,168,168);
 	       box-shadow: rgb(136,136,96) 4px 7px 5px;
		}
</style>
<script>

var profileMap = "";
var dtable;
var recentUniquepin = "";

$(document).ready(function () 
{
	 $('#loadtest').hide();
	 $('#loaddata').hide();
	 $('#loadTableSpinner').hide();
	 $('#tables').hide();
	 $('#mainTable').hide();

	 		 buildTable();
});

function buildTable()
{
	var dataURL= '/dataURL';
	$.ajax({
				type:"POST",
				url :dataURL,
				data:'',
				success:function(data)
				{
					$('#loaddata').hide();
					var jsonvar				=	JSON.parse(data);	
					 console.info("the Jsonvar is this ::"+jsonvar);
					 dtable = $('#mainTable').dataTable({
		 					"bDestroy" : true,
		 					"aoColumns" : [{
		 						"sTitle" : "Name",
		 						"sWidth" : "20%",
		 						"sClass" : "center"
		 					}, {
		 						"sTitle" : "Email",
		 						"sWidth" : "20%",
		 						"sClass" : "center"
		 					}, {
		 						"sTitle" : "Date",
		 						"sWidth" : "20%",
		 						"sClass" : "center"
		 					}, {
		 						"sTitle" : "Phone",
		 						"sWidth" : "20%",
		 						"sClass" : "center"
		 					}, {
		 						"sTitle" : "Referrer",
		 						"sWidth" : "10%",
		 						"sClass" : "center"
		 					}, {
		 						"sTitle" : "College",
		 						"sWidth" : "10%",
		 						"sClass" : "center"
		 					}]
		 				});
		 				dtable.fnClearTable();	
		 				var newRow = [];
		 				
						for(index in jsonvar)
						{
							var time = jsonvar[index].date;
							var date = new Date(time);
							
							newRow[0] = jsonvar[index].name;
							newRow[1] = jsonvar[index].email;	
							newRow[2] = date.toString();
							newRow[3] = jsonvar[index].phone;
							newRow[4] = jsonvar[index].referrer;
							newRow[5] = jsonvar[index].message;
							dtable.fnAddData(newRow);
						}
							dtable.fnDraw();
				}
						
			});
	$('#tables').show();
	 $('#mainTable').show();
}
 </script> 
  </head>

<body style="background-color: white;">

	<!-- Menu -->
	<nav class="menu" id="theMenu">
		<div class="menu-wrap">
			<h1 class="logo"><a href="/home">MD AUTOMATIONS</a></h1>
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
	
	<!-- MAIN PROJECT SECTION -->
	<div id="sp" style="height: 122px;">
		<div class="container">
			<div class="row">
				<img src="../assets/img/MDLOG.png" style="height: 100px;">
			</div><!-- row -->
		</div><!-- /container -->
	</div><!-- /portrwrap -->

	<!-- WELCOME SECTION -->
    <div class="container">
     <div class="row mt centered" style="text-align: left; margin-right: -48px; margin-left: -15px;">
	        <div class="Check" >  
		<img id="loaddata" src="../images/newLayout/spinner.gif" style=" height: 50px; width: 50px; margin-left: 500px; margin-top: 4px;"> 
<h1> <center> Internship on Google App Engine' 14 - Total Registrations</center></h1>
		<div id="tables" style=" border: 2px solid; border-radius: 6px; border-color: rgb(184, 168, 168); box-shadow: 4px 7px 5px #888860; background-color: rgb(230, 230, 230);"> 		

				 <table id="mainTable" class="display" cellpadding="0" width="1200px"  >
                                     <thead>
                                        <tr id="transcripts_list_header" >
											<th><span>Name</span></th>
											<th><span>Email</span></th>
											<th><span>Date</span></th>
											<th><span>Phone</span></th>
											<th><span>Referred By</span></th>
											<th><span>College</span></th>
                                         </tr>
                                      </thead>
                                      <tbody id="dataIn">
                                          <!--  Dynamically populated in admin_dataretrieval.js->processInteraction()-->
                                      </tbody>                                                       
                                    </table>
         </div>
</div>
      	
      </div><!-- /row -->
    </div><!-- /.container -->
	
	<!-- SOCIAL FOOTER --->
	
	
	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/actions.js"></script>
	<script src="../assets/js/masonry.pkgd.min.js"></script>
	<script src="http://malsup.github.com/jquery.form.js"></script>
	<script src="../assets/js/imagesloaded.js"></script>
    <script src="../assets/js/classie.js"></script>
	<script src="../assets/js/AnimOnScroll.js"></script>
	<script type="text/javascript" src="../js/jquery.dataTables.min.js" ></script> 
	<div id="backgroundPopup" style="z-index: 999;"></div>
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
