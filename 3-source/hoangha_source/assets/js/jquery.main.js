function pageLoad() {
}
(function ($) {
    $(window).load(function () {
        EqualSizer('.product-box');
    });
    $(function () {
        myfunload();
        mypageload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();
    $('#sliderBanner').slick({
        autoplay: true,
        autoplaySpeed: 2000,
        pauseOnHover: false,
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear'
    });
    $(".list-product > ul > li").hover(function () {
        $(this).find("ul").stop(true, false, true).slideToggle(300)
    });
    $(".zoom-box").CloudZoom();

    $(".nav-tabs li:first-child").addClass("active");
    $(".nav-tabs li:first-child a").trigger("click");
    $(".tab-content .tab-pane:first-child").addClass("active");
    if ($('#silderPartner').size() == 1)
        var silderPartner = $('#silderPartner').imagesLoaded(function () {
            silderPartner.slick({
                autoplay: true,
                autoplaySpeed: 3000,
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 6,
                slidesToScroll: 1,
                arrow: true,
                responsive: [
                    {
                        breakpoint: 1200,
                        settings: {
                            slidesToShow: 5
                        }
                    },
                  {
                      breakpoint: 1000,
                      settings: {
                          slidesToShow: 4
                      }
                  },
                  {
                      breakpoint: 650,
                      settings: {
                          slidesToShow: 3
                      }
                  },

                  {
                      breakpoint: 510,
                      settings: {
                          slidesToShow: 2
                      }
                  },
                  {
                      breakpoint: 370,
                      settings: {
                          slidesToShow: 1
                      }
                  }
                ]
            });
            silderPartner.textHeight({
                activetit: true,
                listcss: [{ cssname: ".partner-img" }],
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: false,
                csstr: ".element-item",
                max: true
            });
        });
        
         $('.silderinfo').slick({
            slidesToShow: 5,
            slidesToScroll: 5,
            autoplay: true,
            vertical: true,
            dots: false,
            arrows: true,
            prevArrow: $(".control-slider .prev"),
            nextArrow: $(".control-slider .next"),
            autoplaySpeed: 4000,
            responsive: [
            {
                breakpoint: 992,
                settings: {
                    vertical: false,
                    arrows: true,
                    slidesToShow: 3
                }
            },
             {
                 breakpoint: 600,
                 settings: {
                     vertical: false,
                     arrows: true,
                     slidesToShow: 2
                 }
             },
            {
                breakpoint: 480,
                settings: {
                    vertical: false,
                    arrows: false,
                    slidesToShow: 1
                }
            }
            ]
        });
    
         $('.silderproduct').slick({
             slidesToShow: 3,
             slidesToScroll: 3,
             autoplay: true,
             vertical: true,
             dots: false,
             arrows: true,
             prevArrow: $(".control-slider .prev"),
             nextArrow: $(".control-slider .next"),
             autoplaySpeed: 4000,
             responsive: [
             {
                 breakpoint: 992,
                 settings: {
                     vertical: false,
                     arrows: true,
                     slidesToShow: 3
                 }
             },
             {
                 breakpoint: 600,
                 settings: {
                     vertical: false,
                     arrows: true,
                     slidesToShow: 2
                 }
             },
             {
                 breakpoint: 400,
                 settings: {
                     vertical: false,
                     arrows: false,
                     slidesToShow: 1
                 }
             }
             ]
         });

         if ($('.service-main').size() > 0) {
             var newstb = $('.service-main').imagesLoaded(function () {
                 newstb.textHeight({
                     activetit: true,
                     listcss: [{ cssname: ".service-box" }, { cssname: ".service-img" }, { cssname: ".service-name" }],
                     wpointb: true,
                     //widthpont: 479,
                     desbool: false,
                     listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                     tbrow: false,
                     csstr: ".element-item",
                     max: true
                 });
             });
         }

         if ($("#sliderDetails").size() == 1) {
             var bigimg = $(".small-img:first").attr("href");
             var smallimg = $(".small-img:first").attr("data-img");
             $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
             jQuery('.cloud-zoom').CloudZoom();

             $('#sliderDetails .slider-for').slick({
                 slidesToShow: 1,
                 slidesToScroll: 1,
                 arrows: false,
                 infinite: false,
                 fade: true,
                 asNavFor: '#sliderDetails .slider-nav'
             });
             $('#sliderDetails .slider-nav').slick({
                 slidesToShow: 4,
                 slidesToScroll: 1,
                 asNavFor: '#sliderDetails .slider-for',
                 dots: false,
                 infinite: false,
                 //centerMode: true,
                 focusOnSelect: true
             });
             $('#sliderDetails .slider-nav').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                 var bigimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("href");
                 var smallimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("data-img");
                 $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
                 jQuery('.cloud-zoom').CloudZoom();
             });
         }

    mymap();
    myfunsroll();
}
/*****************************************************************************/
function initSlider(thisme) {
    var param = $(thisme).attr('href');
    var slide = $(param).children("div").attr("id");
    if ($('#' + slide).size() == 1) {
        var silderProject1 = $('#' + slide).imagesLoaded(function () {
            silderProject1.owlCarousel({
                margin: 10,
                loop: true,
                autoplaySpeed: 1000,
                margin: 10,
                nav: true,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    450: {
                        items: 2
                    },
                    800: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    },
                    1200: {
                        items: 3
                    },
                }
            });
        });
    }
}
/*=========================================================================*/
function mypageload() {
}
/*========================================================================*/

/*===============================*/
function myfunsroll() {
    menusroll();
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}
function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}

function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};
$('.body-popup .btn-close').click(function () {
    $(".default-popup").fadeOut();
    $(".body-overlay").fadeOut();
});
$(document).mouseup(function (e) {
    var container = $(".body-popup");
    var selector = $(".body-overlay");
    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.fadeOut();
        selector.fadeOut();
    }
});

