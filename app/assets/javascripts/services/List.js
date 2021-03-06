var todo = angular.module('todo');

todo.factory('List', ['$resource', function($resource){
    return $resource('/lists/:id.json', {id: '@id'}, {
        update: {
            method: 'PUT' //this method issues a PUT request
        },
        getArray: {
            method: 'GET',
            isArray: false
        }
    });
}]);
