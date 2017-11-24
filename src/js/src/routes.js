var on404 = function() { log("404 error"); setView("calendar"); }

var routes = {
	"calendar": 	crossroads.addRoute("/calendar/:id:"),
	"quests": 		crossroads.addRoute("/quests/:id:"),
	"inventory": 	crossroads.addRoute("/inventory/:id:"),
	"characters": 	crossroads.addRoute("/characters/:id:"),
	"death-curse": 	crossroads.addRoute("/death-curse/:id:"),
	"settings": 	crossroads.addRoute("/settings"),
	"default" :     crossroads.addRoute(':rest*:', on404, -Infinity)
};

$.each(routes, function (index, value) {
	if (index !== "default") {
		value.matched.add(function(id) {
			id = (typeof id !== "undefined" && !isNaN(Number(id))) ? Number(id) : null;
			setView(index, id);
		});
	}
	
});

hasher.initialized.add(function(h) { log('Hash initialized: "' + h+'"'); crossroads.parse(h); });
hasher.changed.add(function(h) { log('Hash updated: "' + h+'"'); crossroads.parse(h); });
hasher.init();