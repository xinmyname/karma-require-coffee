tests = []

for file of window.__karma__.files
    if /Spec\.js$/.test file 
        tests.push file 
    
    if /Spec\.coffee$/.test file 
        tests.push file

requirejs.config {
    baseUrl: '/base/src',

    paths: {
        'jquery': '../bower_components/jquery/jquery',
        'underscore': '../bower_components/underscore/underscore',
    },

    shim: {
        'underscore': {
            exports: '_'
        }
    },

    deps: tests,

    callback: window.__karma__.start
}

