todo = angular.module('todo',[
  'templates',
  'ngRoute',
  'controllers',
])
todo.config([ '$routeProvider',
              ($routeProvider)->
                $routeProvider
                .when('/',
                  templateUrl: "assets/templates/index.html"
                  controller: 'ToDoController'
                )
])

controllers = angular.module('controllers', [])
controllers.controller('ToDoController', [ '$scope',
  ($scope) ->
])