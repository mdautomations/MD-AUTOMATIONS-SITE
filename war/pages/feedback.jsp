<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Feedback | MD Automations </title>
    <meta name="description" content=" Low cost CCNA certification training and placement">
    <meta name="keywords" content="IEEE, MATLAB, PSPICE, fasttrack java course,  Google App Engine training, Cloud Computing, Abstract download, Data Mining, SAP Training, NS2, NS2, Low cost IEEE projects, Engineering projects, final year IEEE, IEEE Papers Download, Assignment works, School Works, ZIGBEE, Micro Controller, Workshops, Seminars, Seminar Topics, Realtime Simulations, OPNET, Qualnet, NS2 Workshops, Cloud Computing Workshops, BIG Data, Sharepoint, Java Training, Google App Engine Training, Placement Training, 100% Placement, Courses, SAP Trainin, CCNA Training, International Certifications, RHCE Training">
    <meta name="author" content="Web development team - MD AUTOMATIONS">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/ico/favicon.png">

    <!-- Bootstrap core CSS -->
<!--     <link href="http://storage.googleapis.com/mdautomations/CSS/bootstrap.css" rel="stylesheet"> -->

    <!-- Custom styles for this template -->
<!--     <link href="http://storage.googleapis.com/mdautomations/CSS/main.css" rel="stylesheet"> -->

<!--     <link href="http://storage.googleapis.com/mdautomations/CSS/font-awesome.min.css" rel="stylesheet"> -->

<!--     <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'> -->
<!--     <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'> -->
<!-- <link type="text/css" rel="stylesheet" href="http://storage.googleapis.com/mdautomations/CSS/form.css?v3.2.3325"/> -->
<!-- <link href="http://storage.googleapis.com/mdautomations/CSS/calendarview.css?v3.2.3325" rel="stylesheet" type="text/css" /> -->
<!-- <link type="text/css" rel="stylesheet" href="https://static-interlogyllc.netdna-ssl.com/css/styles/nova.css?3.2.3325" /> -->
<!-- <link type="text/css" media="print" rel="stylesheet" href="https://static-interlogyllc.netdna-ssl.com/css/printForm.css?3.2.3325" /> -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
<!--     <script src="http://storage.googleapis.com/mdautomations/CSS/modernizr.custom.js"></script> -->
    <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
  <script>
    function callsubmit()
    {
    	var hello = $('input[name="q3_overallSatisfaction[0]"]:checked').val();
		var id= $('input[name="q3_overallSatisfaction[0]"]:checked').parent().parent().attr('id');
    	$('#'+id).find("input[value='"+hello+"']").attr('checked', true);
    	console.info("q3_overallSatisfaction[0] :: "+hello);
    	
    	var hello1 = $('input[name="q3_overallSatisfaction[1]"]:checked').val();
		var id= $('input[name="q3_overallSatisfaction[1]"]:checked').parent().parent().attr('id');
    	$('#'+id).find("input[value='"+hello1+"']").attr('checked', true);
    	console.info("q3_overallSatisfaction[1] :: "+hello1);
    	
    	var hello2 = $('input[name="q3_overallSatisfaction[2]"]:checked').val();
		var id= $('input[name="q3_overallSatisfaction[2]"]:checked').parent().parent().attr('id');
    	$('#'+id).find("input[value='"+hello2+"']").attr('checked', true);
    	console.info("q3_overallSatisfaction[2] :: "+hello2);
    	
    	var hello3 = $('input[name="q3_overallSatisfaction[3]"]:checked').val();
		var id= $('input[name="q3_overallSatisfaction[3]"]:checked').parent().parent().attr('id');
    	$('#'+id).find("input[value='"+hello3+"']").attr('checked', true);
    	console.info("q3_overallSatisfaction[3] :: "+hello3);
    	
    	var hello4 = $('input[name="q3_overallSatisfaction[4]"]:checked').val();
		var id= $('input[name="q3_overallSatisfaction[4]"]:checked').parent().parent().attr('id');
    	$('#'+id).find("input[value='"+hello4+"']").attr('checked', true);
    	console.info("q3_overallSatisfaction[4] :: "+hello4);
    	$('.form-matrix-table').css('margin','58px');
    	var hello4 = $('input[name="q4_wouldYou4"]:checked').val();
		var id= $('input[name="q4_wouldYou4"]:checked').parent().attr('id');
    	$('#'+id).find("input[value='"+hello4+"']").attr('checked', true);
    	var textarea = $('textarea#input_5').val();
    	console.info("q4_wouldYou4 :: "+hello4);
    	var studentname = $('#studentname').val();
    	var studentemail = $('#studentemail').val();
    	var sendresponse  = "";
//     	$('#input_5').attr('value',textarea);
    	$('textarea#input_5').html(textarea);
    	$('#studentname').attr('value',studentname);
    	$('#studentemail').attr('value',studentemail);
    	var treeInnerHTML = $("#cid_3").html();
    	if($("#responses").is(':checked'))
    	{
    		sendresponse = true;
    	}  
    	else
    	{
    		sendresponse = false;
    	}
    	var responsebox  = $('#hello').html();
    	if((studentname.length!=0)&&(studentemail.length!=0))
    	{
    		var params = {responseboxHTML:responsebox, tree_contents: treeInnerHTML, studentemail:studentemail , studentname:studentname , sendresponse:sendresponse};
        	console.log(params);
        	$.ajax({
                type: 'POST',
                url: "/feedback",
                data: params,
                success: function(data) {
						window.location.href="http://mdautomations.com";
                },
                error: function(req, status, error) { }
            });
    	}
    	else
    	{
    		if(studentname.length==0)
    		{
    				$('#studentname').css('background-color','rgb(188, 134, 158)');
    		}
    		if(studentemail.length==0)
    		{
    				$('#studentemail').css('background-color','rgb(188, 134, 158)');
    		}
    	}
    }
    </script>
    
  </head>

<body style="background-color: white; font-family: Lato; font-weight: 300;font-size: 16px;color: #555;-webkit-font-smoothing: antialiased;" id="feedback-page">

<form class="jotform-form" method="post" accept-charset="utf-8" style="display: block;margin-top: -3em;">
  <input type="hidden" name="formID" />
  <div class="form-all" style="width: 590px;
color: #494E73 !important;
font-family: 'Lucida Grande',' Lucida Sans Unicode',' Lucida Sans',' Verdana',' Tahoma',' sans-serif';
font-size: 14px; background-repeat: no-repeat; list-style: none;
list-style-position: outside;">
    <ul class="form-section" style="list-style: none;
list-style-position: outside;
margin: 0px;
padding: 0px;
position: relative;
zoom: 1;
clear: both; ">
      <li id="cid_1" class="form-input-wide">
        <div class="form-header-group" style="border-top: 0; background: transparent;
border: none;
padding: 24px 0;
margin: 12px 36px 18px;
border-bottom: 1px solid #e3e3e3;">
          <div class="header-text httal htvam">
           <h1 id="header_1" class="form-header" style="font-family: inherit;  font-weight: 200;">
              Feel free to provide your feedback !
            </h1>
            <div id="subHeader_1" class="form-subHeader">
              Please take a moment to fill out this survey
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_matrix" id="id_3" style="padding-left: 36px;padding-right: 36px;margin: 6px 0;width: 100%;padding-top: 12px;padding-bottom: 12px;"> 
      <input type="text" value="" id="studentname" placeholder="Name" style="width: 215px;height: 30px;font-size: 14px;">&nbsp;&nbsp;
      <input type="text" value="" id="studentemail" placeholder="Email" style="width: 215px;height: 30px;font-size: 14px;"><br/><br/>
        <label class="form-label form-label-top" id="label_3" for="input_3" style="font-weight: bold;margin-bottom: 9px; display: block;white-space: normal;"> Overall satisfaction of service </label>
        <div id="cid_3" class="form-input-wide">
          <table summary="" cellpadding="4" cellspacing="0" class="form-matrix-table" style="margin: 18px;">
            <tr>
              <th style="border:none">
                &nbsp;
              </th>
              <th class="form-matrix-column-headers form-matrix-column_0" style="font-family: inherit; font-size: smaller;font-weight: 200;">
                Very satisfied
              </th>
              <th class="form-matrix-column-headers form-matrix-column_1" style="font-family: inherit; font-size: smaller;font-weight: 200;">
                Satisfied
              </th>
              <th class="form-matrix-column-headers form-matrix-column_2" style="font-family: inherit; font-size: smaller;font-weight: 200;">
                Neutral
              </th>
              <th class="form-matrix-column-headers form-matrix-column_3" style="font-family: inherit; font-size: smaller;font-weight: 200;">
                Unsatisfied
              </th>
              <th class="form-matrix-column-headers form-matrix-column_4" style="font-family: inherit; font-size: smaller;font-weight: 200;">
                Very unsatisfied
              </th>
            </tr>
            <tr id="friendliness">
              <th align="left" class="form-matrix-row-headers">
                Friendliness
              </th>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="friendvsatis" name="q3_overallSatisfaction[0]" value="Very satisfied"/>
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="friendsatis" name="q3_overallSatisfaction[0]" value="Satisfied"/>
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="friendneutral" name="q3_overallSatisfaction[0]" value="Neutral"/>
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="friendunsatis" name="q3_overallSatisfaction[0]" value="Unsatisfied"/>
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="friendvunsatis" name="q3_overallSatisfaction[0]" value="Very unsatisfied"/>
              </td>
            </tr>
            <tr id="knowledge">
              <th align="left" class="form-matrix-row-headers">
                Knowledge
              </th>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="Knowledgevsatis" name="q3_overallSatisfaction[1]" value="Very satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="Knowledgesatis" name="q3_overallSatisfaction[1]" value="Satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="Knowledgeneutral" name="q3_overallSatisfaction[1]" value="Neutral" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="Knowledgeunsatis" name="q3_overallSatisfaction[1]" value="Unsatisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="Knowledgevunsatis" name="q3_overallSatisfaction[1]" value="Very unsatisfied" />
              </td>
            </tr>
            <tr id="projectdelivery">
              <th align="left" class="form-matrix-row-headers">
                Project Delivery
              </th>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id=""deliveryvsatis name="q3_overallSatisfaction[2]" value="Very satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="deliverysatis" name="q3_overallSatisfaction[2]" value="Satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="deliveryneutral" name="q3_overallSatisfaction[2]" value="Neutral" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="deliveryunsatis" name="q3_overallSatisfaction[2]" value="Unsatisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="deliveryvunsatis" name="q3_overallSatisfaction[2]" value="Very unsatisfied" />
              </td>
            </tr>
            <tr id="docsupport">
              <th align="left" class="form-matrix-row-headers">
                Documentation Support
              </th>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="docvsatis" name="q3_overallSatisfaction[3]" value="Very satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="docsatis" name="q3_overallSatisfaction[3]" value="Satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="docneutral" name="q3_overallSatisfaction[3]" value="Neutral" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="docunsatis" name="q3_overallSatisfaction[3]" value="Unsatisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="docvuntis" name="q3_overallSatisfaction[3]" value="Very unsatisfied" />
              </td>
            </tr>
            <tr id="overall">
              <th align="left" class="form-matrix-row-headers">
                Over all
              </th>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="overallvsatis" name="q3_overallSatisfaction[4]" value="Very satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="overallvsatis" name="q3_overallSatisfaction[4]" value="Satisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="overallneutral" name="q3_overallSatisfaction[4]" value="Neutral" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="overallvunsatis" name="q3_overallSatisfaction[4]" value="Unsatisfied" />
              </td>
              <td align="center" class="form-matrix-values">
                <input class="form-radio" type="radio" id="overallvunsatis" name="q3_overallSatisfaction[4]" value="Very unsatisfied" />
              </td>
            </tr>
          </table>
        </div>
      </li>
      <div id="hello">
      <li class="form-line" data-type="control_radio" id="id_4" style="padding-left: 62px;padding-right: 36px;margin: 0px 0;width: 100%;padding-top: 0px;padding-bottom: 12px;">
        <label class="form-label form-label-top form-label-auto" id="label_4" for="input_4"> Would you refer your friends in the future? </label><br/><br/>
        <div id="cid_4" class="form-input-wide">
          <div class="form-single-column">
            <span class="form-radio-item" id="question1" style="clear:left; color:#494E73;">
              <input type="radio" class="form-radio" id="input_4_0" name="q4_wouldYou4" value="Yes" />
              <label for="input_4_0"> Yes </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" id="question2" style="clear:left; color:#494E73;">
              <input type="radio" class="form-radio" id="input_4_1" name="q4_wouldYou4" value="No" />
              <label for="input_4_1"> No </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" id="question3" style="clear:left; color:#494E73;">
              <input type="radio" class="form-radio" id="input_4_2" name="q4_wouldYou4" value="Maybe" />
              <label for="input_4_2"> Maybe </label>
            </span>
            <span class="clearfix">
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_5" style="padding-left: 62px;padding-right: 36px;margin: 0px 0;width: 100%;padding-top: 12px;padding-bottom: 12px;">
        <label class="form-label form-label-top form-label-auto" id="label_5" for="input_5"> How can we improve our service? </label><br/><br/>
        <div id="cid_5" class="form-input-wide">
         <textarea id="input_5" class="form-textarea" name="q5_howCan" cols="40" rows="6" style="font-family: inherit;font-weight: 200;font-size: small; width:500px;"></textarea>
        </div>
      </li>
      </div>
      <li class="form-line" data-type="control_textarea" id="id_5" style="padding-left: 62px;padding-right: 36px;margin: 0px 0;width: 100%;padding-top: 12px;padding-bottom: 12px;">
        <div id="cid_5" class="form-input-wide">
        <input type="checkbox" name="response" id="responses" value="Bike">&nbsp;&nbsp;Send me the copy of response<br>
        </div>
      </li>
      
      <li class="form-line" data-type="control_button" id="id_2" style="padding-left: 62px;padding-right: 36px;margin: 0px 0;width: 100%;padding-top: 12px;padding-bottom: 12px;">
        <div id="cid_2" class="form-input-wide">
          <div style="margin-left:156px" class="form-buttons-wrapper">
           <button id="input_2" type="button" onclick="callsubmit();" class="form-submit-button" style="font-family: inherit; width: 150px;height: 40px;">
              Submit Feedback
            </button>
          </div>
        </div>
      </li>
    </ul>
  </div>
</form>
  </body>
</html>
