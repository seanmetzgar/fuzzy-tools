var slideout = new Slideout({
    "panel": document.getElementById("app-wrapper"),
    "menu": document.getElementById("menu-wrapper"),
    "padding": 256,
    "tolerance": 70,
    "duration": 400,
    "easing": "ease-in-out"
});

document.querySelector('button.navbar-toggler').addEventListener('click', function() {
    slideout.toggle();
});