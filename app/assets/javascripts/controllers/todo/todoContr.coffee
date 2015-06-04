todo.controller('ToContr', [ '$scope', '$resource'
  ($scope, $resource) ->
    Tasks = $resource("/lists/:id", {id: '@id'},{update: {method: 'PUT'}})
#    debugger

    $scope.tasks = Tasks.query()

    $scope.addTask =(newtask) ->
      debugger
      if newtask != ''
#        $scope.tasks.map(function(el){
#          el.body = newtask;
#          Tasks.save({id: el.id, task: el});
#        });
        task = Tasks.save(newtask)
        $scope.tasks.push(newtask)
        console.log newtask
        $scope.newtask = {}

])