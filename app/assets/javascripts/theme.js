$(document).ready( function() {

        $('.navbar .dropdown, .dropdown-submenu').hover(function() {
            //$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();
            //$(this).find('.dropdown-menu').show().removeClass('flipOutY').addClass('animated flipInY');
            //$(this).find('.dropdown-menu').show().removeClass('bounceOut').addClass('animated bounceIn');
            //$(this).find('.dropdown-menu').first().show();


        }, function() {
            //$(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();
            //$(this).find('.dropdown-menu').removeClass('flipInY').addClass('animated flipOutY').fadeOut();
            //$(this).find('.dropdown-menu').removeClass('bounceIn').addClass('animated bounceOut').fadeOut();
            //$(this).find('.dropdown-menu').first().hide();

        });

        $('#featureCarousel').carousel({
            interval:   4000
        });

        var clickEvent = false;
        $('#featureCarousel').on('click', '.nav a', function() {
            clickEvent = true;
            $('.nav li').removeClass('active');
            $(this).parent().addClass('active');
        }).on('slid.bs.carousel', function(e) {
            if(!clickEvent) {
                var count = $('#featureCarousel .nav').children().length -1;
                var current = $('#featureCarousel .nav li.active');
                current.removeClass('active').next().addClass('active');
                var id = parseInt(current.data('slide-to'));

                if(count == id) {
                    $('#featureCarousel .nav li').first().addClass('active');
                }
            }
            clickEvent = false;
        });
    });