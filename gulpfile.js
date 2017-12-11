/* globals require */
"use strict";

//Build Plugins
var gulp = require("gulp");
var pipe = require("gulp-pipe");
var autoprefixer = require("gulp-autoprefixer");
var uglify = require("gulp-uglify");
var rename = require("gulp-rename");
var sass = require("gulp-sass");
var sourcemaps = require("gulp-sourcemaps");
var concat = require("gulp-concat");
var stripStyleComments = require("gulp-strip-css-comments");
var stripComments = require("gulp-strip-comments");
var cssmin = require("gulp-cssmin");
var clean = require("gulp-clean");

//Deployment Plugins
var gutil  = require('gulp-util');
var argv   = require('minimist')(process.argv);
var gulpif = require('gulp-if');
var prompt = require('gulp-prompt');
var rsync  = require('gulp-rsync');
var rsyncwrapper = require("rsyncwrapper");

//Helper Functions
module.exports = function pipe(stream, tubes) {
  tubes = tubes || stream.slice(1);
  return tubes.reduce(function(stream, tube) { return stream.pipe(tube); }, Array.isArray(stream) ? stream[0] : stream);
};

var getDependentTasks = function (taskName) {
    var tasks = gulp.tasks;
    var deps = [];
    var task = null;
    for (task in tasks) {

        if (task.startsWith(taskName + ":")) {
            deps.push(task);
        }
    }
    return deps;
};

var throwError = function (taskName, msg) {
  throw new gutil.PluginError({
      plugin: taskName,
      message: msg
    });
};

//File Arrays
var paths = {
    js: {
        vendor: [
            "./src/vendor/signals/signals.js",
            "./src/vendor/jquery/jquery.js",
            "./src/vendor/hasher/hasher.js",
            "./src/vendor/crossroads/crossroads.js",
            "./src/vendor/slideout/slideout.js",
            "./src/vendor/popper/popper.js",
            "./src/vendor/bootstrap/js/bootstrap.js",
            "./src/vendor/mdbootstrap/js/mdb.min.js"
        ],
        src:[
            "./src/js/src/scripts.js",
            "./src/js/src/routes.js"
        ]
    },
    sass: {
        vendor: [
            "./src/vendor/bootstrap/scss/bootstrap.scss",
            "./src/vendor/mdbootstrap/scss/mdb.scss"
        ],
        src: [
            "./src/scss/style.scss"
        ]
    },
    php: {
        src: [
            "./src/**/*.php"
        ]
    },
    src: "./src",
    dist: "./dist/",
    clean: [
        "./dist",
        "./src/vendor",
        "./src/css/all.min.css",
        "./src/css/all.min.css.map",
        "./src/js/all.js",
        "./src/js/all.js.map"
    ]
}

//Vendor Tasks
gulp.task("vendor:jquery", function () {
    return pipe(gulp.src("./node_modules/jquery/dist/jquery.js"),
        [gulp.dest("./src/vendor/jquery")])
        .on('error', gutil.log);
});

gulp.task("vendor:signals", function () {
    return pipe(gulp.src("./node_modules/signals/dist/signals.js"),
        [gulp.dest("./src/vendor/signals")])
        .on('error', gutil.log);
});

gulp.task("vendor:hasher", function () {
    return pipe(gulp.src("./node_modules/hasher/dist/js/hasher.js"),
        [gulp.dest("./src/vendor/hasher")])
        .on('error', gutil.log);
});

gulp.task("vendor:crossroads", function () {
    return pipe(gulp.src("./node_modules/crossroads/dist/crossroads.js"),
        [gulp.dest("./src/vendor/crossroads")])
        .on('error', gutil.log);
});

gulp.task("vendor:slideout", function () {
    return pipe(gulp.src("./node_modules/slideout/dist/slideout.js"),
        [gulp.dest("./src/vendor/slideout")])
        .on('error', gutil.log);
});

gulp.task("vendor:popper", function () {
    return pipe(gulp.src("./node_modules/popper.js/dist/umd/popper.js"),
        [gulp.dest("./src/vendor/popper")])
        .on('error', gutil.log);
});

gulp.task("vendor:bootstrap:sass", function () {
    return pipe(gulp.src("./node_modules/bootstrap/scss/**/*.*"),
        [gulp.dest("./src/vendor/bootstrap/scss")])
        .on('error', gutil.log);
});
gulp.task("vendor:bootstrap:js", function () {
     return pipe(gulp.src("./node_modules/bootstrap/dist/js/bootstrap.js"),
        [gulp.dest("./src/vendor/bootstrap/js")])
        .on('error', gutil.log);
});

gulp.task("vendor:mdbootstrap:sass", function () {
    return pipe(gulp.src(["./lib/mdbootstrap-pro/sass/**/*.*", "!./lib/mdbootstrap-pro/sass/**/*.txt"]),
        [gulp.dest("./src/vendor/mdbootstrap/scss")])
        .on('error', gutil.log);
});

gulp.task("vendor:mdbootstrap:js", function () {
    return pipe(gulp.src("./lib/mdbootstrap-pro/js/mdb.min.js"),
        [gulp.dest("./src/vendor/mdbootstrap/js")])
        .on('error', gutil.log);
});

gulp.task("vendor:mdbootstrap:font", function () {
    return pipe(gulp.src("./lib/mdbootstrap-pro/font/**/*.*"),
        [gulp.dest("./src/font")])
        .on('error', gutil.log);
});

//Build Tasks
gulp.task("sass", ["move"], function () {
    return pipe(gulp.src(paths.sass.vendor.concat(paths.sass.src)),
        [
            sourcemaps.init(),
            sass().on('error', gutil.log),
            autoprefixer(),
            concat("all.css"),
            stripStyleComments({preserve: false}),
            cssmin(),
            rename({suffix: '.min'}),
            sourcemaps.write("./"),
            gulp.dest("./src/css")
        ])
        .on('error', gutil.log);
});

gulp.task("js", ["move"], function () {
    return pipe(gulp.src(paths.js.vendor.concat(paths.js.src)),
        [
            // sourcemaps.init(),
            concat("all.js"),
            stripComments(),
            // uglify().on('error', gutil.log),
            // sourcemaps.write("./"),
            gulp.dest("./src/js")
        ])
        .on('error', gutil.log);
});

gulp.task("clean", function () {
    return pipe(gulp.src(paths.clean, {read: false}),
        [
            clean()
        ])
        .on('error', gutil.log);
});
gulp.task("clean:dist", function () {
    return pipe(gulp.src(paths.dist, {read: false}),
        [
            clean()
        ])
        .on('error', gutil.log);
});

gulp.task("build", ["clean:dist", "sass", "js"], function () {
    return pipe(gulp.src([paths.src + "/**/*.*", paths.src + "/.htaccess"]),
        [
            gulp.dest(paths.dist)
        ])
        .on('error', gutil.log);
});

gulp.task("deploy", ["clean:dist", "build"], function () {
    var rsyncPaths = [paths.dist];
    // Default options for rsync
    var rsyncConf = {
        progress: true,
        root: "dist",
        incremental: true,
        relative: true,
        emptyDirectories: true,
        recursive: true,
        clean: true,
        exclude: [".htaccess"],
        chmod: 755,
        hostname: process.env.FUZZY_TOOLS_SSH_HOST,
        username: process.env.FUZZY_TOOLS_SSH_USER,
        destination: argv.production ? process.env.FUZZY_TOOLS_SSH_PROD_PATH : process.env.FUZZY_TOOLS_SSH_DEV_PATH
    };

    return pipe(gulp.src(rsyncPaths),
        [
            gulpif(
                argv.production,
                prompt.confirm({
                    message: "YO!! Are you sure you want to deploy to PRODUCTION?",
                    default: false
                })
            ),
            rsync(rsyncConf)

        ])
        .on('error', gutil.log);
});

gulp.task('deploy2', function() {
  rsyncwrapper({
    ssh: true,
    src: paths.dist,
    dest: process.env.FUZZY_TOOLS_SSH_USER + '@' + process.env.FUZZY_TOOLS_SSH_HOST + ':' + process.env.FUZZY_TOOLS_SSH_DEV_PATH,
    recursive: true,
    syncDest: true,
    args: ['--verbose']
  }, function(error, stdout, stderr, cmd) {
      gutil.log(stdout);
  });
});

//Watch Tasks
gulp.task("watch", function () {
    gulp.watch(paths.js.src, ["build"]);
    gulp.watch(paths.sass.src, ["build"]);
    gulp.watch(paths.php.src, ["build"]);
});

//General Tasks
gulp.task("move:vendor", getDependentTasks("vendor"));
gulp.task("move", getDependentTasks("move"));
gulp.task("default", ["build", "watch"]);