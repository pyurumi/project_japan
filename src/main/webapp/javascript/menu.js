/**
 * 
 */

$(document).ready(function(){
		$(".topnav").hover(function(){//마우스를 topnav에 오버시
			
		$(this).parent().find(".subnav").slideDown('normal').show();//subnav가 내려옴.
		$(this).parent().hover(function(){}, function(){
		$(this).parent().find(".subnav").slideUp('fast');
		});//subnav에서마우스가 벗어낫을시 원위치
	});
});