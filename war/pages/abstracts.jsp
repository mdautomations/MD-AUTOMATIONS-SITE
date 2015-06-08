<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>MD AUTOMATIONS</title>
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="../css/normalize1.css" />
		<link rel="stylesheet" type="text/css" href="../css/demo1.css" />
		<link rel="stylesheet" type="text/css" href="../css/icons.css" />
		<link rel="stylesheet" type="text/css" href="../css/component.css" />
<!-- 		 <link rel="stylesheet" type="text/css" href="../coursescss/css/demo.css" /> -->
        <link rel="stylesheet" type="text/css" href="../coursescss/css/style9.css" />
<!--         <link href="../assets/css/bootstrap.css" rel="stylesheet"> -->
<!--          <link href="../assets/css/main.css" rel="stylesheet"> -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
		<script src="../js/modernizr.custom.js"></script>
		<script src="../js/signupp.js"></script>
		  <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" />
<!--     <link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css" /> -->
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
		<link rel="stylesheet" type="text/css" href="../css/component1.css" />
		<script src="../js/modernizr.custom.js"></script>

    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="../bootstrap/js/accordionjs.js"></script>
		
	</head>
	<body>
			<div class="container" style="background: none;margin-left: -2%;">
			<header class="clearfix">
				<span><img src="../assets/img/MDLOG.png" style="height: 100px;margin-left: -2%;"></span>
				<h1>Student Portal</h1>
				
			</header>	
		</div>		
		
			
		
		<div class="container" id="containertoshow" style="background: rgb(239, 242, 243); display:block">
                <ul class="ca-menu">
                    <li id="ecebranch">
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content" >
                                <h2 class="ca-main" style="font-size: 13px;">Electronics and Communication</h2>
                                <h3 class="ca-sub">ECE</h3>
                            </div>
                        </a>
                    </li>
                    <li id ="eeebranch">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Electrical and Electronics</h2>
                                <h3 class="ca-sub">EEE</h3>
                            </div>
                        </a>
                    </li>
                    <li id="csebranch">
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Computer Science and Engineering</h2>
                                <h3 class="ca-sub">CSE</h3>
                            </div>
                        </a>
                    </li>
                    <li id="itbranch">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Information Technology</h2>
                                <h3 class="ca-sub">IT</h3>
                            </div>
                        </a>
                    </li>
                    <li id="mphilbranch">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Master of Philosophy</h2>
                                <h3 class="ca-sub">M.Phil(CS)</h3>
                            </div>
                        </a>
                    </li>
                    <li id="me">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Master of Engineering</h2>
                                <h3 class="ca-sub">M.E / M.Tech / Ph.D</h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="container" id="containerbranchECE" style="background: rgb(239, 242, 243); display:none">
                <ul class="ca-menu">
                    <li id = "vlsitopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">VLSI</h2>
                                <h3 class="ca-sub">Search VLSI</h3>
                            </div>
                        </a>
                    </li>
                    <li id = "powertopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Power Electronics</h2>
                                <h3 class="ca-sub">Search PE</h3>
                            </div>
                        </a>
                    </li>
                    <li id = "embededtopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Embedded Systems</h2>
                                <h3 class="ca-sub">Search Embedded</h3>
                            </div>
                        </a>
                    </li>
                    <li id = "roboticstopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Robotics</h2>
                                <h3 class="ca-sub">Search Robotcs</h3>
                            </div>
                        </a>
                    </li>
                    <li id = "pictopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">PIC Controller</h2>
                                <h3 class="ca-sub">Search PIC Controller</h3>
                            </div>
                        </a>
                    </li>
                     <li id = "wiredtopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wired Networks</h2>
                                <h3 class="ca-sub">Wired Networks</h3>
                            </div>
                        </a>
                    </li>
                     <li id = "wirelesstopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wireless Networks</h2>
                                <h3 class="ca-sub">Wireless Networks</h3>
                            </div>
                        </a>
                    </li>
                    <li id = "manettopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">MANET</h2>
                                <h3 class="ca-sub">Search MANET</h3>
                            </div>
                        </a>
                    </li>
                     <li id = "imagetopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Image Processing</h2>
                                <h3 class="ca-sub">Search IP</h3>
                            </div>
                        </a>
                    </li>
                     <li id = "powersystemtopic">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Power Systems</h2>
                                <h3 class="ca-sub">Search PS</h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="container" id="containerbranchCSE" style="background: rgb(239, 242, 243); display:none">
                <ul class="ca-menu">
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Data Mining</h2>
                                <h3 class="ca-sub">Search DM</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Cloud Computing</h2>
                                <h3 class="ca-sub">Search CC</h3>
                            </div>
                        </a>
                    </li>
                    <li id="networksecurity">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Network Security</h2>
                                <h3 class="ca-sub">Search NW</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">JAVA / J2EE</h2>
                                <h3 class="ca-sub">Search JAVA</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Mobile Networks</h2>
                                <h3 class="ca-sub">Search Mobile Networks</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Big Data</h2>
                                <h3 class="ca-sub">Search Big Data</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Semantic Web</h2>
                                <h3 class="ca-sub">Semantic Web</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Ontology</h2>
                                <h3 class="ca-sub">Search Ontology</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/downloadpaper">
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">DBMS</h2>
                                <h3 class="ca-sub">Search DBMS</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wired Networks</h2>
                                <h3 class="ca-sub">Wired Networks</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a href="/downloadpaper">
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wireless Networks</h2>
                                <h3 class="ca-sub">Wireless Networks</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">MANET</h2>
                                <h3 class="ca-sub">Search MANET</h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
             <div class="container" id="containerbranchme" style="background: rgb(239, 242, 243); display:none">
                <ul class="ca-menu">
                <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">VLSI</h2>
                                <h3 class="ca-sub">Search VLSI</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Power Electronics</h2>
                                <h3 class="ca-sub">Search PE</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Embedded Systems</h2>
                                <h3 class="ca-sub">Search Embedded</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Robotics</h2>
                                <h3 class="ca-sub">Search Robotics</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">PIC Controller</h2>
                                <h3 class="ca-sub">Search PIC Controller</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Data Mining</h2>
                                <h3 class="ca-sub">Search DM</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Cloud Computing</h2>
                                <h3 class="ca-sub">Search CC</h3>
                            </div>
                        </a>
                    </li>
                    <li id= "networksecurityme">
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Network Security</h2>
                                <h3 class="ca-sub">Search NW</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">JAVA / J2EE</h2>
                                <h3 class="ca-sub">Search JAVA</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Mobile Networks</h2>
                                <h3 class="ca-sub">Search Mobile Networks</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Big Data</h2>
                                <h3 class="ca-sub">Search Big Data</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Semantic Web</h2>
                                <h3 class="ca-sub">Semantic Web</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Ontology</h2>
                                <h3 class="ca-sub">Search Ontology</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">DBMS</h2>
                                <h3 class="ca-sub">Search DBMS</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wired Networks</h2>
                                <h3 class="ca-sub">Wired Networks</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Wireless Networks</h2>
                                <h3 class="ca-sub">Wireless Networks</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a >
                            <span class="ca-icon">A</span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">MANET</h2>
                                <h3 class="ca-sub">Search MANET</h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="container" id="insideECE" style="background: rgb(239, 242, 243); display:none">
                <ul class="ca-menu">
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/comm_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Multiuser TRDMA Uplink System with 2D Parallel Interference Cancellation</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/image_processing_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Double-Layer Video Transmission Over Decode-and-Forward Wireless Relay Networks Using Hierarchical Modulation</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank"  href="https://00e9e64bac08a1ed9ee29ef8920997926c42af98e1208aefae-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/vlsi2014.pdf?qk=AD5uMEu6TJrTJuH-P-MVCCKn0xPeTCVLGuBHS_4fF5MDAGfQouBh95fZyAByxEhJgRSu_idD2KUPnGQiR6JPWHt4zBntr7hOKNi3FjyAP5wwE3-H4cdNW-nIyFO9EbhFR2g26HadjIja3JwpE7ykDMRYvDGThJanvzaeUccanM9PgMUk_WCRhyBtWHSF6kiZnuJZvZtwmDL2yeP0EznJ1U37i_ObALEk_uZK2JUDXlJXpGYFw0d0Pw2oI31KHRvBhl2m-nl3a3GRmnFNvqb38o6DDlgT97_BJeOwRQuDsFmZUiNsftjwjUYlcBqKa6X2lgfffWz8Jlr5kQRx-i-OF9afm-2qLdH_vkZDoJeIzRvnlgI9UfHx-76KZFcdTZUmCPvPjEOo16jdiSt09H_9hzyzIKRT7HnBcOMQ8WgjUKf1Oenp8jDaRA4PZ-JXhLPcw3zGe4_0836sgCnwIbQm-4Prqi8uYlWrh2l6hJYS3cLK02yubyfaSLtdXGl7f7kCARxyoF3W6WKMIC27y0OWzpq3xcIRVKTlk0a3eolqrUEAscy6BAuTYQQh5l3u-bWWld_UdbDjKu0NSrC2vjY5CkWGvfX4_A0kpsw9eFatkf1O8NXI4k-ELbViDM-r7m3WD155aS52E-2crxvQgyG24PsfEFrDQxjvQkavrDaKILgCFh9aeVK191LsVJQ7_SxkV9k0EgamnmZj">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Hardware implementation of tag-reader mutual authentication protocol for RFID systems</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac56d6b19cf7bf2f28e4d1bfce0239ccca92254455-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/powerelectronics_2014.pdf?qk=AD5uMEtiXCtk4WU_f0iIHRW-fYPhIXfvo_0ZmFOwU8cVuTbv8Bq8OZryDyHMDOZQFIcZMX-mcY_n4CmfKJ1nKLex73HGempXKynR7m4EFmkcdJ67dGPUtPc1mHIAnWfWWbunKWt84YRAYr9QYbjUsIY4yT7cBDYPwVISV1vzcga5Wq8frAUfx23s3zXi0wGv3f47aGq-zEWZPNy_dFhs1mnHWYxt8wBCEXigP-2nwBupkwUh6oPiS-EKptpqw97lXEN0lIWyoDY-Mi4SSWuO1t6Uc5cqcwh3U-bco48Y0QsTqFPQ9tzP0pEXQa-9j11ARyvhstwrujPddIyAwNptyE9PwKA9fsw7C3lVcuSpmld0V4nkSo49ZcUw0jrZ8KeqTrhUEUtnjzO--flRi__61ZZpxBhYlGqHycgprzKZ-k02KvelEKrNzwYtxydavza_EmoHxsmal_7Tw1yhUbvoG3h9U9O2-GXsCgTWHudkDPJ27wQ7bNSyXLXJcTawZRBqnUQiv94JW_N33GfeJmhI5-EIGMHnt0jg9DT0mV00-9syCyM2m5ivhorEtGETfwNAQIP6-MOw_6e56It9gJA1JNq-fGt3rDK9e9Z15jVqxZi17WxqecmUVNBf4Zl8mkINTN0AU9kOZAj2BylQath9Rv6pg0hTnJDx0REto2MgY6ewxFH2qPG87BsjXnW7Q_Da0RbxqfGIX-b-DyqXAYRVSbHVXgt8xjLIpw">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Linear and Pseudolinear Enhanced Phased-Locked Loop (EPLL) Structures</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/pwrsys_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Feature Extraction and Visualization of Power System Transient Stability Results</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Measurement of Speed and Calibration of Tachometers Using Rotating Magnetic Field</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/pdf.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    
                </ul>
            </div>
            <div class="container" id="insidenetworksecurity" style="background: rgb(239, 242, 243); display:none">
                <ul class="ca-menu">
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/comm_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Fully Distributed Proactively Secure Threshold-Multisignature Scheme</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/image_processing_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Hybrid Reliable Routing Technique (HRR) for Wireless Sensor Networks</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank"  href="https://00e9e64bac08a1ed9ee29ef8920997926c42af98e1208aefae-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/vlsi2014.pdf?qk=AD5uMEu6TJrTJuH-P-MVCCKn0xPeTCVLGuBHS_4fF5MDAGfQouBh95fZyAByxEhJgRSu_idD2KUPnGQiR6JPWHt4zBntr7hOKNi3FjyAP5wwE3-H4cdNW-nIyFO9EbhFR2g26HadjIja3JwpE7ykDMRYvDGThJanvzaeUccanM9PgMUk_WCRhyBtWHSF6kiZnuJZvZtwmDL2yeP0EznJ1U37i_ObALEk_uZK2JUDXlJXpGYFw0d0Pw2oI31KHRvBhl2m-nl3a3GRmnFNvqb38o6DDlgT97_BJeOwRQuDsFmZUiNsftjwjUYlcBqKa6X2lgfffWz8Jlr5kQRx-i-OF9afm-2qLdH_vkZDoJeIzRvnlgI9UfHx-76KZFcdTZUmCPvPjEOo16jdiSt09H_9hzyzIKRT7HnBcOMQ8WgjUKf1Oenp8jDaRA4PZ-JXhLPcw3zGe4_0836sgCnwIbQm-4Prqi8uYlWrh2l6hJYS3cLK02yubyfaSLtdXGl7f7kCARxyoF3W6WKMIC27y0OWzpq3xcIRVKTlk0a3eolqrUEAscy6BAuTYQQh5l3u-bWWld_UdbDjKu0NSrC2vjY5CkWGvfX4_A0kpsw9eFatkf1O8NXI4k-ELbViDM-r7m3WD155aS52E-2crxvQgyG24PsfEFrDQxjvQkavrDaKILgCFh9aeVK191LsVJQ7_SxkV9k0EgamnmZj">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Novel approach for computation efficient rekeying for multicast key distribution</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac56d6b19cf7bf2f28e4d1bfce0239ccca92254455-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/powerelectronics_2014.pdf?qk=AD5uMEtiXCtk4WU_f0iIHRW-fYPhIXfvo_0ZmFOwU8cVuTbv8Bq8OZryDyHMDOZQFIcZMX-mcY_n4CmfKJ1nKLex73HGempXKynR7m4EFmkcdJ67dGPUtPc1mHIAnWfWWbunKWt84YRAYr9QYbjUsIY4yT7cBDYPwVISV1vzcga5Wq8frAUfx23s3zXi0wGv3f47aGq-zEWZPNy_dFhs1mnHWYxt8wBCEXigP-2nwBupkwUh6oPiS-EKptpqw97lXEN0lIWyoDY-Mi4SSWuO1t6Uc5cqcwh3U-bco48Y0QsTqFPQ9tzP0pEXQa-9j11ARyvhstwrujPddIyAwNptyE9PwKA9fsw7C3lVcuSpmld0V4nkSo49ZcUw0jrZ8KeqTrhUEUtnjzO--flRi__61ZZpxBhYlGqHycgprzKZ-k02KvelEKrNzwYtxydavza_EmoHxsmal_7Tw1yhUbvoG3h9U9O2-GXsCgTWHudkDPJ27wQ7bNSyXLXJcTawZRBqnUQiv94JW_N33GfeJmhI5-EIGMHnt0jg9DT0mV00-9syCyM2m5ivhorEtGETfwNAQIP6-MOw_6e56It9gJA1JNq-fGt3rDK9e9Z15jVqxZi17WxqecmUVNBf4Zl8mkINTN0AU9kOZAj2BylQath9Rv6pg0hTnJDx0REto2MgY6ewxFH2qPG87BsjXnW7Q_Da0RbxqfGIX-b-DyqXAYRVSbHVXgt8xjLIpw">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Practical Password-Based Two-Server Authentication and Key Exchange System</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://storage.googleapis.com/mdautomations/pwrsys_2014.pdf">
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A Secure Lightweight Approach of Node Membership Verification in Dense HDSN</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">A new Reliable Broadcasting in Mobile Ad-Hoc Networks</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">An Efficient PKC-Based Security Architecture for Wireless Sensor Networks</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Anonymity in Wireless Broadcast NetworkS</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Congestion Control Protocol for Wireless Sensor Networks Handling Prioritized Heterogeneous Traffic</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Controlling IP Spoofing through Inter-Domain Packet filters</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Cooperative Secondary Authorization Recycling</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Dynamicrouting with security consideration</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Elliptic curve cryptography based threshold cryptography implementation for MANETs</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Faster Algorithms for Construction of Recovery Trees Enhancing QoP and QoS</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Enhanced communal Global, Local Memory Management for effective performance of cluster computing</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Flexible Rollback recovery in dynamic Heterogeneous GRID Computing</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Polynomial Time Approximation Algorithms for Multi-Constrained QoS Routing</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Public-key based security scheme for Wireless Sensor Network</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Securing Mobile Ad Hoc Networks with Certificate less Public Keys</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Securing User-controlled Routing Infrastructures</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                     <li>
                        <a target="_blank" href="https://00e9e64bac829b5dc109aa602ff58299b85d36509dd7ced816-apidata.googleusercontent.com/download/storage/v1_internal/b/mdautomations/o/instrument2014.pdf?qk=AD5uMEvpbLvamOuMq_G0AzYe_9c0rhRuLS2PRzyL18gUNqSt4hj8tagj3Hwg8-0fzFuLEfqLQvUcvLAxewqWHOqetZs9h-3UmxfDDRJQXIZiP8a4KsMV8iKpp2yvj1F0BBOy5q-kSFBno-ErPYBkiRD01-t0Na7t6ozP8V1-InR5ePpJgjrZPDmy2o7hvtry2pM4_Mj_VCLXF31jpxCA0nHEIrXa3SAwqEFVpJ3A6kAnZtV50499MPKyqytT-jI1x9iXuELIHTjSGic6NdWPUmy2x2YN6xOWeWR1ZgzzKgcz9-SvcmlVY_TEL_bZoSZlQtHiJKW-wOUqjj7uVfrbONIqC0gN__dT-ERxhdt5jY3uXQUNEtTJNu32xOzEn_JX7-8tYr7qTYOYHbptHpNxx_BVZa30UPCjrbT1xpB4F4A4JzK5DVPK_MVGC1ckfQySYsR26D_TCWtAtuWUEdmfm5MTq3KlwkI6i4JXg--L0sDRfwhg589v-PCN5IffJEWfiOGvSPBx1FfJAHiiuf2h5G9b51qcpk_vvNYbB0wp3RL7o8BQhkto5qs4ALdwi3lKIsgYWIODC5-TAtaaT67lnY9TlHD781vdhMQZO-2kPuChbOZC_uickapZbynkUH4Z9CqQeH3anmBSDjxSKlS4hsuuA-Mg4NYhiCcYgD7wImEC8LyMsDGv6S67nmWzXJ984LT7C1yxW8iL2GCRWyfPxrMdnD40YVEwwg" >
                            <span class="ca-icon"></span>
                            <div class="ca-content">
                                <h2 class="ca-main" style="font-size: 13px;">Trust for Location-based Authorization</h2>
                                <h3 class="ca-sub">Download</h3>
                                <img src="../images/Word.png" style="margin-left: 30%; margin-top: 19%; height: 68px; width: 68px;">
                            </div>
                        </a>
                    </li>
                    
                    
                </ul>
            </div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
		<script src="../js/classie.js"></script>
		<script src="../js/mlpushmenu.js"></script>
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/main.js"></script>
	<script src="../assets/js/masonry.pkgd.min.js"></script>
	<script src="../assets/js/imagesloaded.js"></script>
    <script src="../assets/js/classie.js"></script>
	<script src="../assets/js/AnimOnScroll.js"></script>
		<script>
			new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ) );
		</script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="../js/cbpHorizontalMenu.min.js"></script>
		<script>
			$(function() {
				cbpHorizontalMenu.init();
			});
		</script>
	</body>
</html>