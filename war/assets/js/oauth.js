
$(document).ready(function() {
 
	$('#login_with_google_account').click(function()
			{
				alert("sathya");
				loadGoogleAuthentication();
			});
  });
		
		function loadGoogleAuthentication()
		{
			window.location.href='/authenticateUser';
		}
		
		
				
