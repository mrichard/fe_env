var gulp = require('gulp'),
    notify = require('gulp-notify'),
    jscs = require('gulp-jscs'),
    jshint = require('gulp-jshint');
    //var growl = require('gulp-notify-growl');

gulp.task('jscs', function() {
    'use strict';

    gulp.src('js/*.js')
        .pipe(jscs())
        .pipe(notify({
            title: 'JSCS',
            message: 'JSCS Passed. Let it fly!'
        }));
});

gulp.task('lint', function() {
    'use strict';

    gulp.src('js/*.js')
        .pipe(jshint('.jshintrc'))
        .pipe(jshint.reporter('jshint-stylish'))
        .pipe(jshint.reporter('fail'))
        .pipe(notify({
            title: 'JSHint',
            message: 'JSHint Passed. Let it fly!',
        }));
});
