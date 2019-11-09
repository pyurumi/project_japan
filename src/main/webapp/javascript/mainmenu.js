/**
 * 
 */

$(document).ready(function() {
	$(".menu li").hover(function() {
		$('ul:first', this).show();
	}, function() {
		$('ul:first', this).hide();
	});
	$(".menu>li:has(ul)>a").each(function(){
		$(this).html($(this).html()+'&or;');
	});
	$(".menu ul li:has(ul)").find("a:first").append("<p style='float:right; margin:-3px'>&#9656;</p>'");
});