var todo = angular.module('todo');

todo.factory('myFact', function(){
    var fact = {};
    fact.toSuper = function(x){
        return x*x
    };
    return fact
});