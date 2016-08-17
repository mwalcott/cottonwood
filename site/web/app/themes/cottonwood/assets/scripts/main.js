/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can
 * always reference jQuery with $, even when in .noConflict() mode.
 * ======================================================================== */

(function($) {

  // Use this variable to set up the common and page specific functions. If you
  // rename this variable, you will also need to rename the namespace below.
  var Sage = {
    // All pages
    'common': {
      init: function() {
        // JavaScript to be fired on all pages

$(document).ready(function(){
    $(this).scrollTop(0);
});

				new WOW().init();

			  $("#btnSearch").click(function(e) {
			    e.preventDefault();
			    var serialized_data = $('#quick_search').serialize();
			    var url = "http://cottonwood.reslisting.com/searchlisting.aspx?"; //
			    $("#quick_search input").each(function(e) {
			      if ($(this).val().length === 0) {
			        $('.slide_down, #search_error').addClass( 'active animated bounceInUp' );
			        return false;
			      } else {
					 //location = txtCity
					//bedrooms = cmbBeds
			        url = url + "&txtCity=" + encodeURIComponent($(this).val());
			        //$('#search_error').text(url).addClass('active');
				   window.location.href = url;
			      }
			    });
			  });


				if (Modernizr.mq('screen and (min-width: 768px)')) {

					$('.banner').affix({
					  offset: {
					    top: function() { return $('.gallery').outerHeight(true); }
					  }
					}).on('affix.bs.affix', function () {
					  $('.banner').addClass("animated slideInDown");
					}).on('affix-top.bs.affix', function () {
					  $('.banner').removeClass("animated slideInDown");
					});

				}
        
      },
      finalize: function() {
        // JavaScript to be fired on all pages, after page specific JS is fired
      }
    },
    // Home page
    'home': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {
        // JavaScript to be fired on the home page, after the init JS
      }
    },
    // About us page, note the change from about-us to about_us.
    'about_us': {
      init: function() {
        // JavaScript to be fired on the about us page
      }
    }
  };

  // The routing fires all common scripts, followed by the page specific scripts.
  // Add additional events for more control over timing e.g. a finalize event
  var UTIL = {
    fire: function(func, funcname, args) {
      var fire;
      var namespace = Sage;
      funcname = (funcname === undefined) ? 'init' : funcname;
      fire = func !== '';
      fire = fire && namespace[func];
      fire = fire && typeof namespace[func][funcname] === 'function';

      if (fire) {
        namespace[func][funcname](args);
      }
    },
    loadEvents: function() {
      // Fire common init JS
      UTIL.fire('common');

      // Fire page-specific init JS, and then finalize JS
      $.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
        UTIL.fire(classnm);
        UTIL.fire(classnm, 'finalize');
      });

      // Fire common finalize JS
      UTIL.fire('common', 'finalize');
    }
  };

  // Load Events
  $(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.
