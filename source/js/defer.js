// ------------------------------------------------------------Back To Top
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

// ------------------------------------------------------------Google Analytics

