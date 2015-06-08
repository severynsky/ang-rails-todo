var todo = angular.module('todo');

todo.factory('List', function($resource){
    return $resource('/lists/:id', {id: '@id'}, {
        update: {
            method: 'PUT' //this method issues a PUT request
        },
        getArray: {
            method: 'GET', isArray: true
        }
    });
});