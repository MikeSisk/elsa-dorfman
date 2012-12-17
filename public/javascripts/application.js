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
   $('ul.sortable_category_nav').sortable(
	{
		axis: 'y',
		update: function() {
		  var classes = $(this).attr('class');
	    reg = /\b[A-Za-z0-9.]+(?=_model)/
		  modelName = reg.exec(classes);
		  
		  modelName = $(this).data('model');
			jQuery.post($(this).data('update-url'), $(this).sortable('serialize') + '&model='+modelName);
		}
	});

   $('ul.sortable_images').sortable(
	{
		update: function() {		  
		  modelName = $(this).data('model');
		  jQuery.post($(this).data('update-url'), $(this).sortable('serialize') + '&model='+modelName);
		}
	});
	
	// lightbox image viewing
	$('#gallery a, .image a').lightBox();
	
	$galleries = jQuery('.album #gallery');
	if($galleries.length > 0) {
    jQuery('.album #gallery').jcarousel({
        // Configuration goes here
    });	

	
  
	}
	
	$(function(){ // document ready

	  var stickyTop = $('#books').offset().top; // returns number   

	});

	$(function(){ // document ready 

	  var stickyTop = $('#books').offset().top; // returns number    

	  $(window).scroll(function(){ // scroll event

	    var windowTop = $(window).scrollTop(); // returns number

	  });

	});

	$(function(){ // document ready

	  var stickyTop = $('#books').offset().top; // returns number 

	  $(window).scroll(function(){ // scroll event  

	    var windowTop = $(window).scrollTop(); // returns number

	    if (stickyTop < windowTop) {
	      $('#books').css({ position: 'fixed', top: 0 });
	    }
	    else {
	      $('#books').css('position','static');
	    }

	  });

	});
	
	// train line refactor
  // var STOP_HOVER_SIZE = 40;
  // var STOP_HOVER_BORDER_RAD = STOP_HOVER_SIZE / 2;
  // var STOP_HOVER_OFFSET = STOP_HOVER_BORDER_RAD / 2;
  // 
  // var STOP_REST_SIZE = 20;
  // var STOP_REST_BORDER_RAD = STOP_REST_SIZE / 2;
  // var STOP_REST_OFSET = 0;
  // 
  // $train_lines = $('.train_line').each(function(){
  //  $line = $(this);
  //  $stops = $line.children('.stop');
  //  
  //  $stops.each(function(index, e){
  //    $(this).css("top", index * STOP_HOVER_SIZE);
  //  });
  //  
  //  var num_stops  = $stops.size();
  //  $line.css('height', (num_stops-1) * STOP_HOVER_SIZE - 17); // <<< 17 is the hack... wtf??
  //  
  //  $stops.hover(
  //    function(e) {
  //        var index = $(this).index();
  //      $(this).stop().animate({
  //        width:  STOP_HOVER_SIZE,
  //        height: STOP_HOVER_SIZE,
  //        WebkitBorderTopLeftRadius:    STOP_HOVER_BORDER_RAD, 
  //        WebkitBorderTopRightRadius:   STOP_HOVER_BORDER_RAD, 
  //        WebkitBorderBottomLeftRadius:   STOP_HOVER_BORDER_RAD, 
  //        WebkitBorderBottomRightRadius:  STOP_HOVER_BORDER_RAD, 
  //        MozBorderRadius: STOP_HOVER_BORDER_RAD, 
  //        BorderRadius:    STOP_HOVER_BORDER_RAD,
  //        left: -STOP_HOVER_OFFSET,
  //        top: index * STOP_HOVER_SIZE - STOP_HOVER_OFFSET}, 100, 'linear', function(){});
  // 
  //      var $line_wrap = $(this).parents('.train_line_wrap');
  //      var $label = $('<div id="' + index + '" class="popup_label">Gabba Gabba' + index + '</div>').appendTo($line_wrap);
  //      $label.text($(this).attr('label'));
  //      $label.css({
  //        'position': 'absolute',
  //        'top': index * 40 - 5,
  //        'left': 60,
  //        'width': '120px',
  //        'z-index': 1,
  //        'background-color': '#fff',
  //        'padding': '5px',
  //        'border': '#000 solid 1px',
  //        'opacity': 0.0,   
  //        });
  // 
  //      $label.stop().animate({
  //        left: 40,
  //        opacity: 1.0}, 400, 'easeInOutExpo', function(){});       
  //    },
  //    function(e) {
  //      var index = $(this).index();
  //      var $line_wrap = $(this).parents('.train_line_wrap');
  //      
  //      $(this).stop().animate({
  //        width: STOP_REST_SIZE,
  //        height:  STOP_REST_SIZE,
  //        WebkitBorderTopLeftRadius: STOP_REST_BORDER_RAD, 
  //        WebkitBorderTopRightRadius: STOP_REST_BORDER_RAD, 
  //        WebkitBorderBottomLeftRadius: STOP_REST_BORDER_RAD, 
  //        WebkitBorderBottomRightRadius: STOP_REST_BORDER_RAD, 
  //        MozBorderRadius: STOP_REST_BORDER_RAD, 
  //        BorderRadius: STOP_REST_BORDER_RAD,
  //        left: STOP_REST_OFSET,
  //        top: index * STOP_HOVER_SIZE}, 150, 'linear', function(){});
  // 
  //      $line_wrap.children('.popup_label[id='+index+']').stop().animate({
  //        left: 100,
  //        opacity: 0.0}, 300, 'easeInOutExpo', function(){ $(this).remove(); });        
  //    }
  //  );
  // });
});