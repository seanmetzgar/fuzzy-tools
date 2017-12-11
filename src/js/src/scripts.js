var views = {
	"calendar" : $(".app-view.calendar"),
	"quests" : $(".app-view.quests"),
	"inventory" : $(".app-view.inventory"),
	"characters" : $(".app-view.characters"),
	"death-curse" : $(".app-view.death-curse"),
	"settings": $(".app-view.settings")
}

var slideout = new Slideout({
    "panel": document.getElementById("app-wrapper"),
    "menu": document.getElementById("menu-wrapper"),
    "padding": 256,
    "tolerance": 70,
    "duration": 400,
    "easing": "ease-in-out"
});

var log = function (msg) {
	var host = window.location.hostname;

	if (typeof msg !== "undefined" && (host.includes("tools.dev") || host.includes("localhost"))) {
	    console.log(msg)
	} // Only log on local & dev
};

var setView = function(view, id = null) {
	id = (typeof id === "number") ? id : null;
	if (typeof view !== "undefined" && typeof views[view] !== "undefined") {
		$(".app-view").fadeOut();
		views[view].fadeIn();
	}
}

document.querySelector('button.navbar-toggler').addEventListener('click', function() {
    slideout.toggle();
});


$(document).ready(function () {
	$(".set-current-day").on("click", function() {
    	var day_id = $(this).data("current-day");
   		var action = "set_current_day";

    	$.ajax({
 			method: "POST",
			url: "ajax.php",
			data: { "action": action, "day_id": day_id }
		}).done(function( response ) {
		    log("Current Day Update: " + response.status);
		});
    });

    $('.mdb-select').material_select();
});
