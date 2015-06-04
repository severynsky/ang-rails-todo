var todo = angular.module('todo');

todo.factory('myFact', function(){
    var factory = {};
    factory.toSuper = function(x){
        return x*x
    };
    return factory
});