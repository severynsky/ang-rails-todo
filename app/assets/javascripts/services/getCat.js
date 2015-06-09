var todo = angular.module('todo');

todo.factory('getCat', function($resource){
    return $resource('/categories', null, {
        query:{
            method: "GET",
            isArray: false
        }
    })
});
