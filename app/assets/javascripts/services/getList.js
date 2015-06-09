todo.factory('getList', function($resource){
    return $resource('/lists.json',{}, {
        query: {
        }
    })
});