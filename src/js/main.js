AUI().ready(

	/*
	This function gets loaded when all the HTML, not including the portlets, is
	loaded.
	*/

	function() {
	}
);

Liferay.Portlet.ready(

	/*
	This function gets loaded after each and every portlet on the page.

	portletId: the current portlet's id
	node: the Alloy Node object of the current portlet
	*/

	function(portletId, node) {
	}
);

Liferay.on(
	'allPortletsReady',

	/*
	This function gets loaded when everything, including the portlets, is on
	the page.
	*/

	function() {
	}
);


$(document).ready(function(){

	$('.show-menu').on('click',function(){
	
		$(this).find('.icon-bar').toggleClass('active');
		
		if($('#wrapper').hasClass('aside-bar-active')){
			
			$('#wrapper').addClass('aside-bar-closed');
			$('#wrapper').removeClass('aside-bar-active');
			
		}
		
		else{
			$('#wrapper').addClass('aside-bar-active');
			$('#wrapper').removeClass('aside-bar-closed');
			
		}
		
	});

	
	
// Custom sorting plugin
(function($) {
  $.fn.sorted = function(customOptions) {
    var options = {
      reversed: false,
      by: function(a) { return a.text(); }
    };
    $.extend(options, customOptions);
    $data = $(this);
    arr = $data.get();
    arr.sort(function(a, b) {
      var valA = options.by($(a));
      var valB = options.by($(b));
      if (options.reversed) {
        return (valA < valB) ? 1 : (valA > valB) ? -1 : 0;				
      } else {		
        return (valA < valB) ? -1 : (valA > valB) ? 1 : 0;	
      }
    });
    return $(arr);
  };
})(jQuery);

// DOMContentLoaded
$(function() {

  // bind radiobuttons in the form
  var $filterType = $('#filter input[name="type"]');
  var $filterSort = $('#filter select[name="sort"]');

  // get the first collection
  var $applications = $('.filtered-card-list-template .cards-list');

  // clone applications to get a second collection
  var $data = $applications.clone();

  // attempt to call Quicksand on every form change
  $filterType.add($filterSort).change(function(e) {
	 
	  var filterTypeChecked =  $('#filter input[name="type"]:checked');
		

    if (filterTypeChecked.attr('value') == 'all') {

      var $filteredData = $data.find('.filter-item');
    } else {
      var $filteredData = $data.find('.filter-item[data-type=' + filterTypeChecked.attr('value')  + ']');
    }

	
    // if sorted by size
    if ($('#filter select[name="sort"]').val()  == "description") {
      var $sortedData = $filteredData.sorted({
        by: function(v) {
          return $(v).find('p').text().toLowerCase();
        }
      });
    } 
	
	else if($('#filter select[name="sort"]').val()  == "nameza") {
      // if sorted by name
      var $sortedData = $filteredData.sorted({
        by: function(v) {
          return $(v).find('h3').text().toLowerCase();
        },
		reversed: true
      });
    } 

	else{
      // if sorted by name
      var $sortedData = $filteredData.sorted({
        by: function(v) {
          return $(v).find('h3').text().toLowerCase();
        }
      });
    } 
	
    // finally, call quicksand
    $applications.quicksand($sortedData, {
      duration: 800,
      easing: 'easeInOutQuad'
    });

  });

});	
	
	
	
});

