todo.controller('ToContr', [ '$scope', '$resource', '$route', 'List', 'getList', 'getCat', '$routeParams'
  ($scope, $resource, $route, List, getList, getCat, $routeParams) ->
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
#        debugger
#        $scope.lists.push($scope.task.list.body)
        window.task = $scope.task
        load()
        $scope.task = ""
      )
    $scope.edit =(task) ->
      task.body = "new some"
      task.$update()

    $scope.show =(id) ->
      taskitem = List.get({id: id}, ->
#        debugger
        $scope.print = {
          body: taskitem.body,
          cat_title: taskitem.cat.title,
          created_at: taskitem.created_at
        }
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