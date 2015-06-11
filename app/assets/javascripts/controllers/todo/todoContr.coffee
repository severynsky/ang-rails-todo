todo.controller('ToContr', [ '$scope', '$resource', '$route', 'List', 'getCat', '$routeParams'
  ($scope, $resource, $route, List, getCat, $routeParams) ->
    window.List = List;
    window.body = $scope.task

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
      $scope.task = task
      $scope.addTask =() ->
        taskitem = List.get({id: $scope.taskEl.id}, ->  
          taskitem.body = $scope.task.body
          taskitem.category_id = $scope.task.category_id
          taskitem.$update()
          load()
        )

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