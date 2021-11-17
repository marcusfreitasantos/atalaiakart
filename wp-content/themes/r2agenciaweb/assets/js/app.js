//Footer Bot Fixed
$(window).on("load", function(){
    diferenca = $( window ).height() - $("#content").offset().top - $("#footer").height();
    $("#content").css("min-height", diferenca);
});

//Loading
$(window).on("load", function() {
    // weave your magic here.
    $(".loading").fadeOut("slow");
    $("body").addClass("loaded");
});

// Menu Active
$(document).ready(function(){
    $('a').each(function(index) {
        if(this.href.trim() == window.location)
            $(this).addClass("active");
    });
});

//Sub menu open on click (Mobile)
$(".menu-item-has-children").click(function(){
    if(!$(this).hasClass("opened")) {
        $(this).addClass("opened");
    } else {
        $(this).removeClass("opened");
    }
});

//Scroll Fluid to #div
$('a[href^="#"]').on('click',function (e) {
    e.preventDefault();

    var target = this.hash,
    $target = $(target);

    // Adiciona Data ao Body pra dizer qual menu está ativo (ONE PAGE)
    // $("body").attr("data-active",target.replace('#',''));

    $('html, body').stop().animate({
        'scrollTop': $target.offset().top
    }, 900, 'swing', function () {
        window.location.hash = target;
    });
});

// Animate on Scroll
$(document).ready(function() {
    $('.animate').addClass('animate-onload');
});
$(document).click(function() {
    $('.animate').addClass('animate-onclick');
});
$(window).scroll(function(d,h) {
    var janela = this;
    var screenHeight = $( window ).height();
    $('.animate').each(function(i) {
        if (jQuery(janela).scrollTop() >= ($(this).offset().top) - (screenHeight/100)*100 ) {
            $(this).addClass('animate-onscroll');
        }
    });
});

// Gmaps Scroll Fix
$('.map-fix').click(function() {
    $(this).css('display','none');
});

// Replace all SVG images with inline SVG
jQuery('img.svg').each(function(){
    var $img = jQuery(this);
    var imgID = $img.attr('id');
    var imgClass = $img.attr('class');
    var imgURL = $img.attr('src');
    jQuery.get(imgURL, function(data) {
        var $svg = jQuery(data).find('svg');
        if(typeof imgID !== 'undefined') {
            $svg = $svg.attr('id', imgID);
        }
        if(typeof imgClass !== 'undefined') {
            $svg = $svg.attr('class', imgClass+' replaced-svg');
        }
        $svg = $svg.removeAttr('xmlns:a');
        $img.replaceWith($svg);
    }, 'xml');
});


function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;
  
    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
  
    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
  
    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    /* Toggle between adding and removing the "active" class,
    to highlight the button that controls the panel */
    this.classList.toggle("active");

    /* Toggle between hiding and showing the active panel */
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
} 