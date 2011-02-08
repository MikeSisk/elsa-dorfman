function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).parent(".nested-fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}

// We only want these styles applied when javascript is enabled
// $('div.navigation').css({'width' : '300px', 'float' : 'left'});
// $('div.content').css('display', 'block');

$(document).ready(function() {	
	
	// lightbox image viewing
	$('#gallery a').lightBox();
	
	// subway line menu
	$('#sidebar #train_line').children('.stop').each(function(index, e){
		$(this).css("margin-bottom", 0);
		$(this).css("top", index * 40);
	});
	
	var $train_line = $('#sidebar #train_line');
	var num_stops  = $train_line.children('.stop').size();
	$train_line.css('height', (num_stops-1) * 40 - 17); // 17 is the hack... wtf??
//	console.log("num_stops: " + num_stops);
	
	// subway line map test
	$('#sidebar #train_line > .stop').hover(
		function(e) {
		    var index = $(this).index();
			$(this).stop().animate({
				width: 40,
				height: 40,
				WebkitBorderTopLeftRadius: 20, 
				WebkitBorderTopRightRadius: 20, 
				WebkitBorderBottomLeftRadius: 20, 
				WebkitBorderBottomRightRadius: 20, 
				MozBorderRadius: 20, 
				BorderRadius: 20,
				left: -10,
				top: index * 40 - 10}, 100, function(){});
				
			var $sidebar = $('#sidebar');
			var $label = $('<div id="' + index + '" class="popup_label">Gabba Gabba' + index + '</div>').appendTo($sidebar);
			$label.text($(this).attr('label'));
			$label.css({
				'position': 'absolute',
				'top': index * 40 - 5,
				'left': 100,
				'width': '120px',
				'z-index': 1,
				'background-color': '#fff',
				'padding': '5px',
				'border': '#000 solid 1px',
				'opacity': 0.0,   
				});
				
			$label.stop().animate({
				left: 70,
				opacity: 1.0}, 200, 'linear', function(){});
		},
		function(e) {
			var index = $(this).index();
			$(this).stop().animate({
				width: 20,
				height:  20,
				WebkitBorderTopLeftRadius: 10, 
				WebkitBorderTopRightRadius: 10, 
				WebkitBorderBottomLeftRadius: 10, 
				WebkitBorderBottomRightRadius: 10, 
				MozBorderRadius: 10, 
				BorderRadius: 10,
				left: 0,
				top: index * 40}, 150, function(){});
				
			$('#sidebar .popup_label[id='+index+']').stop().animate({
				left: 100,
				opacity: 0.0}, 200, function(){$(this).remove(); });		
		}
	);

});