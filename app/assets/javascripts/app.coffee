@todo = angular.module('todo', [
  'templates',
  'ngRoute',
  'ngResource',
  'tabsSwitcher',
  'ui.bootstrap'
])

@todo.run(->
  console.log 'angular is running'
)
