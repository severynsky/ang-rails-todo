@todo = angular.module('todo', [
  'templates',
  'ngRoute',
  'ngResource'
])

@todo.run(->
  console.log 'angular is running'
)
