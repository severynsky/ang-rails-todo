todo.factory('getList', ['$resource', function($resource){
    return $resource('/lists.json',{}, {
        query: {
        }
    })
}]);