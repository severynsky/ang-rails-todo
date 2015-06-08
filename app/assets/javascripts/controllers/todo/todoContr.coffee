todo.controller('ToContr', [ '$scope', '$resource', '$route', 'List', '$routeParams'
  ($scope, $resource, $route, List, $routeParams) ->

    load = ->
      $scope.list = List.query()
      window.$list = $scope.list

    load()

    $scope.addTask =() ->
      List.save($scope.task, ->
#        $scope.lists.push($scope.task.list.body)
        load()
        $scope.task = ""
      )
    $scope.edit =(task) ->
      task.body = "new some"
      task.$update()


    $scope.show =(id) ->
       taskitem = List.get({id: id}, ->
         $scope.print = {body: taskitem.body, created_at: taskitem.created_at}
      )


#      toedit = $resource("/lists/:id", update: { method: 'PUT' }).get({id: id.id}, ->
#        console.log toedit
#        debugger
#        $scope.task = toedit
#        $scope.addTask = ->
#          debugger
#          toedit.update()
#          $scope.task = ""

    $scope.delete =(item) ->
      console.log item
      List.delete(item)
      load()
])