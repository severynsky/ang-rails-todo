todo.controller('ToContr', [ '$scope', '$resource', '$route', 'List', 'getCat', '$routeParams'
  ($scope, $resource, $route, List, getCat, $routeParams) ->
    window.List = List;

    load = ->
      $scope.list = List.getArray()
      $scope.catlist = getCat.query()
      window.catlist = $scope.catlist
      window.$list = $scope.list
      window.checkpath = $scope.cat

    load()
    $scope.path = "some"

    $scope.addTask =() ->
      List.save($scope.task, ->
        load()
        $scope.task = ""
      )
    $scope.edit =(task) ->
      $scope.taskEl = task  
      # debugger
      taskitem = List.get({id: $scope.taskEl.id}, ->
        taskitem.body = "new some"
        taskitem.$update()
      )
      load()

    $scope.show =(id) ->
      taskitem = List.get({id: id}, ->
        $scope.print = {
          body: taskitem.body,
          cat_title: taskitem.cat.title,
          created_at: taskitem.created_at
        }
      )

    $scope.delete =(item) ->
      console.log item
      List.delete(item)
      load()
])