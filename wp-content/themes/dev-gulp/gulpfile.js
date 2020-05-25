var themename = 'luhn';
var gulp = require( 'gulp' ),
    autoprefixer = require( 'gulp-autoprefixer' ),
    browserSync  = require( 'browser-sync' ).create(),
    sass  = require( 'gulp-sass' ),
    cleanCSS  = require( 'gulp-clean-css' ),
    sourcemaps  = require( 'gulp-sourcemaps' ),
    concat  = require( 'gulp-concat' ),
    imagemin  = require( 'gulp-imagemin' ),
    changed = require( 'gulp-changed' ),
    uglify  = require( 'gulp-uglifyes' ),
    scsslint = require('gulp-scss-lint'),
    lineec  = require( 'gulp-line-ending-corrector' );

var root  = '../' + themename + '/',
    scss  = root + 'sass/',
    cssdist = root + 'dist/css/',
    js  = root + 'src/js/',
    jsdist  = root + 'dist/js/';
    lint  = 'lint.yml';

// Watch Files

var PHPWatchFiles  = root + '**/*.php',
    styleWatchFiles  = root + '**/*.scss';

// Used to concat the files in a specific order.
var jsSRC = [
    js + 'isMobile.js',
    js + 'preloader.js',
    js + 'modernizr-webp.js',
    js + 'BrowserDetect.js',
    js + 'picturefill.min.js',
    js + 'hover-changeGif.js',
    js + 'hover-glitch.js',
    js + 'carousel.js',
    js + 'play-YT-iframe.js',
    js + 'play-video.js',
    js + 'share-button.js',
    js + 'hamburger/easings.js',
    js + 'hamburger/demo6.js',
    js + 'active-category.js',
    js + 'delay-hyperlink.js',
    js + 'test.js'
    // js + 'bootstrap-hover.js',
];


// Used to concat the files in a specific order.
var cssSRC =  [
//   root + 'src/css/bootstrap.css',
//   root + 'src/css/all.css',
  root + 'src/css/hamburger.css',
  root + 'style.css'
];

var imgSRC = root + 'src/img/*',
    imgDEST = root + 'dist/img/';

function css() {
  return gulp.src([scss + 'main.scss'])
  .pipe(sourcemaps.init({loadMaps: true}))
  .pipe(sass({
    // outputStyle: 'expanded'
    outputStyle: 'compressed'
  }).on('error', sass.logError))
  .pipe(autoprefixer('last 2 versions'))
  // .pipe(sourcemaps.write())
  .pipe(lineec())
  .pipe(gulp.dest(cssdist));
}

function scssLint() {
  return gulp.src([root + 'sass/**/*.scss'])
  .pipe(scsslint({
    'config': lint,
    'maxBuffer': 99999999999
  }));
}


function concatCSS() {
  return gulp.src(cssSRC)
  .pipe(sourcemaps.init({loadMaps: true, largeFile: true}))
  .pipe(concat('libraries.min.css'))
  .pipe(cleanCSS())
  // .pipe(sourcemaps.write('./maps/'))
  .pipe(lineec())
  .pipe(gulp.dest(cssdist));
}

function javascript() {
  return gulp.src(jsSRC)
  .pipe(concat('libraries.js'))
  .pipe(uglify())
  .pipe(lineec())
  .pipe(gulp.dest(jsdist));
}

function imgmin() {
  return gulp.src(imgSRC)
  .pipe(changed(imgDEST))
      .pipe( imagemin([
        imagemin.gifsicle({interlaced: true}),
        imagemin.jpegtran({progressive: true}),
        imagemin.optipng({optimizationLevel: 5})
      ]))
      .pipe( gulp.dest(imgDEST));
}

function watch() {
  browserSync.init({
    open: 'external',
    // host: '192.168.0.149',
    host: 'mywebsite.luhn',
    proxy: 'mywebsite.luhn',
    port: 8080,
  });
  // gulp.watch(styleWatchFiles, scssLint);
  gulp.watch(styleWatchFiles, gulp.series([css, concatCSS] , scssLint));
  gulp.watch(jsSRC, javascript);
  gulp.watch(imgSRC, imgmin);
  gulp.watch([PHPWatchFiles, jsdist + 'libraries.js', cssdist + 'libraries.min.css', cssdist + 'main.css']).on('change', browserSync.reload);
}

exports.css = css;
exports.concatCSS = concatCSS;
exports.scssLint = scssLint;
exports.javascript = javascript;
exports.watch = watch;
exports.imgmin = imgmin;



var build = gulp.parallel(watch);
gulp.task('default', build);
