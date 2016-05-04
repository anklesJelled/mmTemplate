// Avoid `console` errors in browsers that lack a console.
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeline', 'timelineEnd', 'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

// ------------------------------------------------------------Viewport Size
$(document).ready(function() {showViewportSize();});
$(window).resize(function() {showViewportSize();});
function showViewportSize() {
    var the_width = $(window).width();
    var the_height = $(window).height();
    $('#width').text(the_width);
    $('#height').text(the_height);
}

// ------------------------------------------------------------Back To Top
// Each (jQuery) could be replaced with a ($)
jQuery(document).ready(function() {
    var offset = 500;
    var duration = 200;
    jQuery(window).scroll(function() {
        if (jQuery(this).scrollTop() > offset) {
            jQuery('#backToTop').fadeIn(duration);
        } else {
            jQuery('#backToTop').fadeOut(duration);
        }
    });
    
    jQuery('#backToTop').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({
            scrollTop: 0
        }, duration);
        return false;
    })
});
