var todo = angular.module('todo');

todo.factory('getCat', ['$resource', function($resource){
    return $resource('/categories', null, {
        query:{
            method: "GET",
            isArray: false
        }
    })
}]);
