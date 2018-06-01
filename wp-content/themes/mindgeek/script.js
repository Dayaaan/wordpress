$(document).ready(function() {
    $("#opacity").css("opacity", 1.5);
    $("#opacity").hover(function() {
        $("#opacity2").animate({opacity: 0.5}, 500);
        $("#opacity3").animate({opacity: 0.5}, 500);
    }, function() {
        $("#opacity2").animate({opacity: 1.0}, 500);
        $("#opacity3").animate({opacity: 1.0}, 500);
    });
});
$(document).ready(function() {
    $("#opacity2").css("opacity", 1.5);
    $("#opacity2").hover(function() {
        $("#opacity").animate({opacity: 0.5}, 500);
        $("#opacity3").animate({opacity: 0.5}, 500);
    }, function() {
        $("#opacity").animate({opacity: 1.0}, 500);
        $("#opacity3").animate({opacity: 1.0}, 500);
    });
});
    
$(document).ready(function() {
    $("#opacity3").css("opacity", 1.5);
    $("#opacity3").hover(function() {
        $("#opacity").animate({opacity: 0.5}, 500);
        $("#opacity2").animate({opacity: 0.5}, 500);
    }, function() {
        $("#opacity").animate({opacity: 1.0}, 500);
        $("#opacity2").animate({opacity: 1.0}, 500);
    });
});

