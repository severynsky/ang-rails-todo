todo.controller('thirdContr', [ '$scope', '$http', function ($scope, $http){
    var url = "/lists";
    $http.get(url).success( function(responce){
        console.log(responce[0].body);
        $scope.list = responce;
    })
}]);