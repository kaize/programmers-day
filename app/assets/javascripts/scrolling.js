jQuery(document).ready(function() {

	var top = $(document.body).children(0).position().top;
	var displayed = false;
	var $window = $(window);

	$window.scroll(function () {
		if($window.scrollTop() <= top)
	    {
		    displayed = false;
			$(".up").fadeOut(500);
			$(".color").fadeOut(500);
		}
		else if(displayed == false)
		{
			displayed = true;
			$(".up").fadeIn(500);
			$(".color").fadeIn(500);
	    }
	});

	$(".up").click(function(){
		$.scrollTo(0, 500);
        return false;
	});

	$(".anchor-news").click(function (){
		$.scrollTo("#page1", 500);
        return false;
	});

	$(".anchor-info").click(function (){
		$.scrollTo("#page2", 500);
        return false;
	});

	$(".anchor-want").click(function (){
		$.scrollTo("#page3", 500);
        return false;
	});

	$(".anchor-quest").click(function (){
		$.scrollTo("#page4", 500);
        return false;
	});

	$(".anchor-orgs").click(function (){
		$.scrollTo("#page5", 500);
        return false;
	});
});
