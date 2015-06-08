<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="initial-scale=1.0">
      <meta name="robots" content="noindex, nofollow" />
      <title>MD AUTOMATIONS - STUDENT PORTAL</title>
      <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="../registerstyle/css/main.css">
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
   </head>
   <body>
      <div id="wrapper">
         <nav>
            <ul class="top-nav">
               <li class="active"><a href="/portal">1. User Name</a></a></li>
               <li><a href="/accountsetup">2. Account Setup</a></a></a></li>
               <li><a href="/projectdelivery">3. Project Delivery</a></li>
            </ul>
            <ul class="top-nav-mb">
               <li class="active"><a href="/portal">Step 1</a></a></li>
               <li><a href="/accountsetup">Step 2</a></a></a></li>
               <li><a href="/projectdelivery">Step 3</a></li>
            </ul>
         </nav>
         <section class="step-1">
         <h5>Registration Process</h5>
         <h2>Spend a little time to get us know you.</h2>
         <div class="input-grp">
            <p>How can we call you ?</p>
            <input type="text" placeholder="Enter your Name here" class="inpt-box" id="studentname">
            <p>Step 1 out of 3</p>
         </div>
         <br/>
<!--          <button class="btn-nxt" OnClick="location.href='step2.jsp'">Next Step</button> -->

<center><img id="loaddata" src="../images/newLayout/spinner.gif" style=" height: 50px; width: 50px; display: none;"></center>
			<button class="btn-nxt" id="studentnamebutton">Next Step</button>
			
<!--          <img class="brand" src="../assets/img/MDLOG.png"> -->
         <img class="brand" src="../assets/img/MDLOG.png" style="height: 12%;width: 14%;">
         </secton>
      </div>
<!--       <script src="../registerjs/jquery-1.10.2.js"></script> -->
      <script src="../registerjs/action.js"></script>
   </body>
</html>