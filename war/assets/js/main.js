;(function(){

			// Menu settings
			$('#menuToggle, .menu-close').on('click', function(){
				$('#menuToggle').toggleClass('active');
				$('body').toggleClass('body-push-toleft');
				$('#theMenu').toggleClass('menu-open');
			});
			
			$('#javademo').on('click', function(){
				window.location.href="/portal";
			});
			
			$('#taketocourses').on('click', function(){
				window.location.href="/courses?page=registraion";
			});
			
			$('#buildapp').on('click', function(){
				window.location.href="/portal?page=services";
			});
			
			$('#certification').on('click', function(){
				window.location.href="/international-certifications-training?page=services";
			});
			
			$('.btn-lg').on('click', function(){
				window.location.href="/portal";
			});
			
			
})(jQuery)