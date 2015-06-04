'use strict';

todo.config(['$routeProvider',
    function($routeProvider){
        $routeProvider.
            when('/', {
                templateUrl: "assets/templates/index.html",
                controller: 'ToContr'
            }).
            when('/second', {
                templateUrl: "assets/templates/second.html",
                controller: 'counterContr'
            }).
            when('/third', {
                templateUrl: "assets/templates/third.html",
                controller: 'thirdContr'
            }).
            otherwise({
                redirectTo: '#/'
            });
    }
]);

