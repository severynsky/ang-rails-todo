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
items =[
  {
    id: 1
    name: 'item no'
    done: false
  },
  {
    id: 2
    name: 'item no'
    done: false
  },
  {
    id: 3
    name: 'item no'
    done: false
  },
  {
    id: 4
    name: 'item no'
    done: false
  },
]

controllers = angular.module('controllers', [])
controllers.controller('ToDoController', [ '$scope',
  ($scope) ->
    $scope.print = (name, id) ->
      if name || id
        console.log(name)
#        debugger
        items.push {id: id, 'name': name}
        $scope.name = ""
        $scope.id = ""
      else
        console.log('no data')
    $scope.items = items

    $scope.makeItDone =() ->
#      console.log(this.item)
      this.item.done = true
#      this.ngClass('strike')
])