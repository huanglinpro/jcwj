(function($){
	$.fn.UItoTop=function(options){
		var defaults={
				text:'To Top',
				min:200,inDelay:600,
				outDelay:400,
				containerID:'toTop',
				containerHoverID:'toTopHover',
				scrollSpeed:1200,
				easingType:'linear'
				},settings=$.extend(defaults,options),
					containerIDhash='#'+settings.containerID,
					containerHoverIDHash='#'+settings.containerHoverID;
		$('body').append(
				'<a href="#" id="'+settings.containerID+'">'+settings.text+'</a>'
				);
		$(containerIDhash).hide().on('click.UItoTop',function(){
			$('html, body').animate({scrollTop:0},
					settings.scrollSpeed,settings.easingType);
			$('#'+settings.containerHoverID,this).stop().animate({'opacity':0},
					settings.inDelay,settings.easingType);
			return false;}).prepend('<span id="'+settings.containerHoverID+'"></span>').hover(function(){
						$(containerHoverIDHash,this).stop().animate({'opacity':1},600,'linear');},
						function(){
							$(containerHoverIDHash,this).stop().animate({'opacity':0},700,'linear');
		});
		
		
		$(window).scroll(function(){
			var sd=$(window).scrollTop();
			if(typeof document.body.style.maxHeight==="undefined"){
				$(containerIDhash).css(
						{'position':'absolute','top':sd+$(window).height()-50})
			;}
if(sd>settings.min)
$(containerIDhash).fadeIn(settings.inDelay);else
$(containerIDhash).fadeOut(settings.Outdelay);});};})(jQuery);
function str() {
	charset="utf-8";
    $("#bgbtn").hide();
    $("#bg").mouseover(function () {
        $("#bgbtn").show();
    });
    $("#bgbtn").mouseleave(function () {
        $("#bgbtn").hide();
    });
    
//	if($("#un").text("")===null){
//		$("#un").text("login");
//		$("#loginto").attr("herf","jsp/user_login.jsp")
//	}
    
//	function showname(name) {
    	
    	
//    	var fgg = false;
//    
//    	var info = $("#un").text();
//		if($("#un").text()!=null){
//			$("#un").text(info);
//			$("#loginto").attr("herf","index.jsp");
//			$("#loginto").hide();
//		}
////	}
	//	console.log($("#un").text());
		//console.log(info);
		//alter("OK");
    
}
window.onload = str;

