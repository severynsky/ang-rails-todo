@todo = angular.module('todo',[
  'templates',
  'ngRoute',
  'ngResource'
])

@todo.run(->
  console.log 'angular is running'
)

#@controllers = angular.module('controllers', [])
@todo.controller('ToDoController', [ '$scope',
  ($scope) ->
    $scope.tasks = ["one", "two", "three"]
])