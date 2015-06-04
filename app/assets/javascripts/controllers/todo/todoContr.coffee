todo.controller('ToContr', [ '$scope', '$resource', '$routeParams'
  ($scope, $resource, $routeParams) ->
    Tasks = $resource("/lists/:id", {id: '@id'},{ save: {method: 'POST'} })
    $scope.lists = Tasks.query()
    $scope.task = {
      list: {}
    }
    $scope.addTask =() ->
      Tasks.save($scope.task)

    $scope.show =(id) ->
      toshow = $resource("/lists/:id").get({id: id}, ->
        date = new Date(toshow.created_at)
        createdDate = date.getDate() + 1
        $scope.print = {body: toshow.body, created_at: createdDate}
      )
])