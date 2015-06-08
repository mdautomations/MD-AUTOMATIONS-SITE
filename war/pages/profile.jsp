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
		<script src="../js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container"  style="background-color: #f2f2f2;">
			<!-- Push Wrapper -->
			<div class="mp-pusher" id="mp-pusher">

				<!-- mp-menu -->
				<nav id="mp-menu" class="mp-menu">
					<div class="mp-level">
						<h2 class="icon icon-world">All Categories</h2>
						<ul>
							<li class="icon icon-arrow-left">
								<a class="icon icon-display" href="#">Projects</a>
								<div class="mp-level">
									<h2 class="icon icon-display">Projects</h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-phone" href="#">B.E / B.Tech</a>
											<div class="mp-level">
												<h2>B.E / B.Tech</h2>
												<ul>
													<li><a href="#">CSE / IT</a></li>
													<li><a href="#">ECE</a></li>
													<li><a href="#">EEE</a></li>
													<li><a href="#">Other</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-tv" href="#">M.E / M. Tech</a>
											<div class="mp-level">
												<h2>M.E / M.Tech</h2>
												<ul>
													<li><a href="#">Computer Science</a></li>
													<li><a href="#">Power Electronics</a></li>
													<li><a href="#">VLSI</a></li>
													<li><a href="#">Embedded Systems</a></li>
													<li><a href="#">Other</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-camera" href="#">MCA / M.Phil</a>
											<div class="mp-level">
												<h2>MCA / M.Phil</h2>
												<ul>
													<li><a href="#">Computer Science</a></li>
													<li><a href="#">Other</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-camera" href="#">B.Sc / Diploma</a>
											<div class="mp-level">
												<h2>B.Sc / Diploma</h2>
												<ul>
													<li><a href="#">CS</a></li>
													<li><a href="#">Electronics</a></li>
													<li><a href="#">Electrical</a></li>
													<li><a href="#">Other</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-camera" href="#">Other</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="icon icon-arrow-left">
								<a class="icon icon-news" href="#">Courses</a>
								<div class="mp-level">
									<h2 class="icon icon-news">Courses</h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-phone" href="#">Computer Sciences</a>
											<div class="mp-level">
												<h2>Computer Sciences</h2>
												<ul>
													<li><a href="#">JAVA / J2EE</a></li> 
													<li><a href="#">App Engine</a></li>
													<li><a href="#">NS2</a></li>
													<li><a href="#">Data Mining</a></li>
													<li><a href="#">Microsoft .Net</a></li>
													<li><a href="#">Visual C++</a></li>
													<li><a href="#">Big Data / Hadoop</a></li>
													<li><a href="#">Android</a></li>
													<li><a href="#">IOS</a></li>
													<li><a href="#">C / C++</a></li>
													<li><a href="#">Data Structures</a></li> 
													<li><a href="#">Ethical Hacking</a></li> 
													<li><a href="#">Adobe</a></li> 
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-tv" href="#">Electronics Oriented</a>
											<div class="mp-level">
												<h2>Electronics Oriented</h2>
												<ul>
													<li><a href="#">Digital Communication </a></li>
													<li><a href="#">Power Electronics</a></li>
													<li><a href="#">VLSI</a></li>
													<li><a href="#">Embedded Systems</a></li>
													<li><a href="#">Matlab</a></li>
													<li><a href="#">PSPICE</a></li>
													<li><a href="#">Digital Signal Processing</a></li>
													<li><a href="#">Image Processing </a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-camera" href="#">Other</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="icon icon-arrow-left">
								<a class="icon icon-shop" href="#">Certifications</a>
								<div class="mp-level">
									<h2 class="icon icon-shop">Certifications</h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-phone" href="#">International</a>
											<div class="mp-level">
												<h2>International</h2>
												<ul>
													<li><a href="#">OCJP (Oracle)</a></li> 
													<li><a href="#">MCSE (Microsoft)</a></li>
													<li><a href="#">MCP (Microsoft)</a></li>
													<li><a href="#">MCTS (Microsoft)</a></li>
													<li><a href="#">CCNA (Cisco)</a></li>
													<li><a href="#">OCP (Oracle)</a></li>
													<li><a href="#">RHCE (Redhat)</a></li>
													<li><a href="#">Juniper</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</li>
							<li><a class="icon icon-wallet" href="#">Notifications</a></li>
							<li><a class="icon icon-photo" href="#">Research</a></li>
							<li><a class="icon icon-wallet" href="#">Apps</a></li>
							<li><a class="icon icon-wallet" href="#">Store</a></li>
							<li><a class="icon icon-wallet" href="/peers">View Others Profile</a></li>
						</ul>
					</div>
				</nav>
				<!-- /mp-menu -->

				<div class="scroller"><!-- this is for emulating position fixed of the nav -->
					<div class="scroller-inner">
						<!-- Top Navigation -->
<!-- 						<div class="codrops-top clearfix"> -->
<!-- 							<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/CircularNavigation/"><span>Previous Demo</span></a> -->
<!-- 							<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=16252"><span>Back to the Codrops Article</span></a></span> -->
<!-- 						</div> -->
						<header class="codrops-header" style=" background-color: black;">
						<img src="../assets/img/MDLOG.png" style="height: 100px;">
							<h1 style=" color: white;"><span style="text-align: center;margin-top: -7%;">Let's join hands togeather !</span></h1>
						</header>
						<div class="content clearfix">
							<div class="block block-40 clearfix" style=" color: black;">
								<p><a href="#" id="trigger" class="menu-trigger" style="color: black;">Menu</a></p>
								<nav class="codrops-demos">
									<div class="sidebar-nav">
        		<img src="../images/AM.png" class="single_user_photo" style="min-widdth:250px;max-height: 250px;border-radius: 4px;margin-left: 28PX;max-width: 250px;" id="149d9044-225e-47aa-b315-158bcc9e3291"><br></br>
        		<button type="button" class="btn btn-green btn-lg" style=" background-color: rgb(148, 214, 148); font-size: 13px; margin-left: 27%;">Change Picture</button>
        	  </div>
								</nav>
							</div>
							<div class="block block-60" style=" color: black; width: 60%;">
								<p><strong style="font-size: 45px;">Sathya Narayanan</strong></p>
								<p><strong style="font-size: 22px;">Qualification</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MCA </p>
								<p><strong style="font-size: 22px;">Experience</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3 Years </p>
								<p><strong style="font-size: 22px;">Skill Set</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C, C++, Java </p>
								<p><strong style="font-size: 22px;">Email</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; asn.tech@gmail.com </p>
								<p><strong style="font-size: 22px;">Phone</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;91-9952592624 </p>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Courses</strong></p>
								<p> C, C++, Java <button type="button" class="btn btn-green btn-lg" style=" background-color: rgb(148, 214, 148); font-size: 13px;">Add Course</button> </p>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Certifications</strong></p>
								<p> C, C++, Java <button type="button" class="btn btn-green btn-lg" style=" background-color: rgb(148, 214, 148); font-size: 13px;">Add Certification</button> </p>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Projects</strong></p>
								<p> C, C++, Java <button type="button" class="btn btn-green btn-lg" style=" background-color: rgb(148, 214, 148); font-size: 13px;">Know your Project status</button></p>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Website</strong></p>
								<p>www.mdautomations.com</p>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">People who likes your profile</strong></p>
								<table class="table everyone-table" style=" margin-top: 3%;">
			  	    			<tbody id="others_sort_name_list">
			  	      			   <tr class="person-listing parent">
			  	       				    <td width="38%"><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/AV4YdnsabYC_6T5UxUwB8vDWO30z6c89u3CHOEdsTiNXGg505hvDg3oGj-QR0ky-lOFA6LOs_eq1ThGee-FWCe2Zrjz0K_hG=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/FTsYBlH8na-NDeuLIawSMrVQBqmxyMVRJpYJ0qGgEhJLUZfimT9X-pNxXOD-Ah1Iq_Igg-nfyWsA7p88VRZOjRp3OSnXZilfAlc=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/kDSheV3s-VKCNxrm_3pn2MnXwLTGkK5i2EU5rtOlt5iFtoPoKnZTnAEYxNfvdqDAG85jSm375LZhzQp1s1jWplHMBHqCK6MihA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/lEBZMqvom7RFS4yWYGkA7fA84v18vfF0Is-_WmWlvcjAxbJe0YwXhGVu0Yh8zQUhXappmjG0tBFLBvXrW2DN9-fK0xFji9Gs=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/_i1_jQICfCUloS5E5Ffhze1iqhhrf0G1GA4SaPkV1dLem0pDRM1vN6gTQPNnKFTFE3nvAf48lh-U7CH0t1q9-IM4SKHnD9TxgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/u7fYmm71onyJpViMHHslPyjhiY4kAHWEJSLA_HU25usKNNWKlieh-D5-jX-1PpfcAultcRwjz2NyNKHLw9RsUWR07TkoUcjV=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/vESQXPkAlpV3mWlY3qhb6B3uA5bZyyza5W03oYLX3IFvNxiA6LZ8v_Uwsfu63gF9bNFqqmaFIdVbI91AiOeUOMOl7yrgaE6XCwo=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh6.ggpht.com/gehYnOIXAvZ3CRWc20lEgYIud_X6XbGAAEhDpXKyNi46Ttn4lfeGvg8xOFxml4KyJdqWv72K_4Iym98odjFtK_g9HFOu77w6xw=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/sI_RmRcQYuHRtpGuYNjFt_KVlLQf-qBwOruKOkxCVC0JfOd1WeuaB1qyCl1MrMuzb-ymFoJPCI3UsolPUNNHP1PSMXckFXbp1A=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/DYMue9vu4Q_PnbRHdB_Nq1CKuogn5U8gfpyD3YN1cmYo2bCIbXkWk_2QsdjgS4noJAm0aki6ICjpXRIWdsQITFZ1KlkU9q-xDko=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/i7c2mtX1tLH9qQVJ3No0azaSNYIiH-LxRuAfhRn5ue9aLKztTffAWXmVQTdo_ZuLWDE9Jy5EwTVCVTVOetC7Tnp4X7ETxEgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/xGh8VVQq3BsTBPn7xmbTU_FswClPMCMq-hGJ4RI_StQq6xB5wo-TAUDZcOqxBEN-uXdq8IzBhypxLVcZ8u4qiw4yqA_tPdKwzQ=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/Ja5UgAA4qoqPWf8Rr3xkTdl-6b0Kv8TrCPmvghcJnRemtaDfu1coKkku3w25kVha-5E4_bZzhoXmGDW3o7gXsC2Maz1VocZzxIU=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/gnVaHWonHERJlQ-3IX_K0gE8iey7OcDIiQtSweFS7cnCwPUUXUxteFg0V8RHuapDVtvkZ1OGxKFU9Q9uN5Porb58iUU-yxS8Ma4=s32"></a></div></td>
					  	         </tr>
			  	        	 </tbody>
			  	           </table>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">People who viewed your profile</strong></p>
								<table class="table everyone-table" style=" margin-top: 3%;">
			  	    			<tbody id="others_sort_name_list">
			  	      			   <tr class="person-listing parent">
			  	       				    <td width="38%"><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/AV4YdnsabYC_6T5UxUwB8vDWO30z6c89u3CHOEdsTiNXGg505hvDg3oGj-QR0ky-lOFA6LOs_eq1ThGee-FWCe2Zrjz0K_hG=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/FTsYBlH8na-NDeuLIawSMrVQBqmxyMVRJpYJ0qGgEhJLUZfimT9X-pNxXOD-Ah1Iq_Igg-nfyWsA7p88VRZOjRp3OSnXZilfAlc=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/kDSheV3s-VKCNxrm_3pn2MnXwLTGkK5i2EU5rtOlt5iFtoPoKnZTnAEYxNfvdqDAG85jSm375LZhzQp1s1jWplHMBHqCK6MihA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/lEBZMqvom7RFS4yWYGkA7fA84v18vfF0Is-_WmWlvcjAxbJe0YwXhGVu0Yh8zQUhXappmjG0tBFLBvXrW2DN9-fK0xFji9Gs=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/_i1_jQICfCUloS5E5Ffhze1iqhhrf0G1GA4SaPkV1dLem0pDRM1vN6gTQPNnKFTFE3nvAf48lh-U7CH0t1q9-IM4SKHnD9TxgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/u7fYmm71onyJpViMHHslPyjhiY4kAHWEJSLA_HU25usKNNWKlieh-D5-jX-1PpfcAultcRwjz2NyNKHLw9RsUWR07TkoUcjV=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/vESQXPkAlpV3mWlY3qhb6B3uA5bZyyza5W03oYLX3IFvNxiA6LZ8v_Uwsfu63gF9bNFqqmaFIdVbI91AiOeUOMOl7yrgaE6XCwo=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh6.ggpht.com/gehYnOIXAvZ3CRWc20lEgYIud_X6XbGAAEhDpXKyNi46Ttn4lfeGvg8xOFxml4KyJdqWv72K_4Iym98odjFtK_g9HFOu77w6xw=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/sI_RmRcQYuHRtpGuYNjFt_KVlLQf-qBwOruKOkxCVC0JfOd1WeuaB1qyCl1MrMuzb-ymFoJPCI3UsolPUNNHP1PSMXckFXbp1A=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/DYMue9vu4Q_PnbRHdB_Nq1CKuogn5U8gfpyD3YN1cmYo2bCIbXkWk_2QsdjgS4noJAm0aki6ICjpXRIWdsQITFZ1KlkU9q-xDko=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/i7c2mtX1tLH9qQVJ3No0azaSNYIiH-LxRuAfhRn5ue9aLKztTffAWXmVQTdo_ZuLWDE9Jy5EwTVCVTVOetC7Tnp4X7ETxEgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/xGh8VVQq3BsTBPn7xmbTU_FswClPMCMq-hGJ4RI_StQq6xB5wo-TAUDZcOqxBEN-uXdq8IzBhypxLVcZ8u4qiw4yqA_tPdKwzQ=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/Ja5UgAA4qoqPWf8Rr3xkTdl-6b0Kv8TrCPmvghcJnRemtaDfu1coKkku3w25kVha-5E4_bZzhoXmGDW3o7gXsC2Maz1VocZzxIU=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/gnVaHWonHERJlQ-3IX_K0gE8iey7OcDIiQtSweFS7cnCwPUUXUxteFg0V8RHuapDVtvkZ1OGxKFU9Q9uN5Porb58iUU-yxS8Ma4=s32"></a></div></td>
					  	         </tr>
			  	        	 </tbody>
			  	           </table>
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Privacy Control</strong></p>
								<p>Share your profile</p>
								<div class="onoffswitch" style="margin-left: 68%; margin-top: -13%;"> 
   									 <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked="">
    									<label class="onoffswitch-label" for="myonoffswitch">
     										   <div class="onoffswitch-inner"></div>
        									  <div class="onoffswitch-switch"></div>
    									</label>
							  </div>
							  <br/>
							  <br/>
								<p style=" font-size: 25px;">Allow to send request</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="onoffswitch" style="margin-left: 68%; margin-top: -17%;"> 
   									 <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked="">
    									<label class="onoffswitch-label" for="myonoffswitch">
     										   <div class="onoffswitch-inner"></div>
        									  <div class="onoffswitch-switch"></div>
    									</label>
							  </div>
							  
							</div>
							<div class="block block-60" style=" color: black;">
								<p><strong style="font-size: 22px;">Send Friend Request</strong></p>
								<input class="textbox"type="text"> 
								<button type="button" class="btn btn-green btn-lg" style=" background-color: rgb(148, 214, 148); font-size: 13px;">Send</button>
								
							</div>
							<div class="block block-60" style=" color: black; width: 100%;">
								<p><strong style="font-size: 22px;">Total Friends <b>20</b>, Mutual Friends <b>5</b></strong></p>
								<table class="table everyone-table" style=" margin-top: 3%;">
			  	    			<tbody id="others_sort_name_list">
			  	      			   <tr class="person-listing parent">
			  	       				    <td width="38%"><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/AV4YdnsabYC_6T5UxUwB8vDWO30z6c89u3CHOEdsTiNXGg505hvDg3oGj-QR0ky-lOFA6LOs_eq1ThGee-FWCe2Zrjz0K_hG=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/FTsYBlH8na-NDeuLIawSMrVQBqmxyMVRJpYJ0qGgEhJLUZfimT9X-pNxXOD-Ah1Iq_Igg-nfyWsA7p88VRZOjRp3OSnXZilfAlc=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/kDSheV3s-VKCNxrm_3pn2MnXwLTGkK5i2EU5rtOlt5iFtoPoKnZTnAEYxNfvdqDAG85jSm375LZhzQp1s1jWplHMBHqCK6MihA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/lEBZMqvom7RFS4yWYGkA7fA84v18vfF0Is-_WmWlvcjAxbJe0YwXhGVu0Yh8zQUhXappmjG0tBFLBvXrW2DN9-fK0xFji9Gs=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/_i1_jQICfCUloS5E5Ffhze1iqhhrf0G1GA4SaPkV1dLem0pDRM1vN6gTQPNnKFTFE3nvAf48lh-U7CH0t1q9-IM4SKHnD9TxgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/u7fYmm71onyJpViMHHslPyjhiY4kAHWEJSLA_HU25usKNNWKlieh-D5-jX-1PpfcAultcRwjz2NyNKHLw9RsUWR07TkoUcjV=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/vESQXPkAlpV3mWlY3qhb6B3uA5bZyyza5W03oYLX3IFvNxiA6LZ8v_Uwsfu63gF9bNFqqmaFIdVbI91AiOeUOMOl7yrgaE6XCwo=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh6.ggpht.com/gehYnOIXAvZ3CRWc20lEgYIud_X6XbGAAEhDpXKyNi46Ttn4lfeGvg8xOFxml4KyJdqWv72K_4Iym98odjFtK_g9HFOu77w6xw=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/sI_RmRcQYuHRtpGuYNjFt_KVlLQf-qBwOruKOkxCVC0JfOd1WeuaB1qyCl1MrMuzb-ymFoJPCI3UsolPUNNHP1PSMXckFXbp1A=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/DYMue9vu4Q_PnbRHdB_Nq1CKuogn5U8gfpyD3YN1cmYo2bCIbXkWk_2QsdjgS4noJAm0aki6ICjpXRIWdsQITFZ1KlkU9q-xDko=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh3.ggpht.com/i7c2mtX1tLH9qQVJ3No0azaSNYIiH-LxRuAfhRn5ue9aLKztTffAWXmVQTdo_ZuLWDE9Jy5EwTVCVTVOetC7Tnp4X7ETxEgA=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/xGh8VVQq3BsTBPn7xmbTU_FswClPMCMq-hGJ4RI_StQq6xB5wo-TAUDZcOqxBEN-uXdq8IzBhypxLVcZ8u4qiw4yqA_tPdKwzQ=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh4.ggpht.com/Ja5UgAA4qoqPWf8Rr3xkTdl-6b0Kv8TrCPmvghcJnRemtaDfu1coKkku3w25kVha-5E4_bZzhoXmGDW3o7gXsC2Maz1VocZzxIU=s32"></a></div><div class="badge-img pull-left"><a><img class="challenge-img" src="http://lh5.ggpht.com/gnVaHWonHERJlQ-3IX_K0gE8iey7OcDIiQtSweFS7cnCwPUUXUxteFg0V8RHuapDVtvkZ1OGxKFU9Q9uN5Porb58iUU-yxS8Ma4=s32"></a></div></td>
					  	         </tr>
			  	        	 </tbody>
			  	           </table>
							</div>
						</div>
					</div><!-- /scroller-inner -->
				</div><!-- /scroller -->

			</div><!-- /pusher -->
			
		</div><!-- /container -->
		
		<script src="../js/classie.js"></script>
		<script src="../js/mlpushmenu.js"></script>
		<script>
			new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ) );
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