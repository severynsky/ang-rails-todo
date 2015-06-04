todo.controller('counterContr', function($scope, myFact){
    $scope.count = 2;
    $scope.showCount = $scope.count;
    //debugger
    $scope.doIt = function(){
        console.log($scope.count);
        $scope.result = myFact.toSuper($scope.count);
        $scope.showCount = $scope.count;
        $scope.count = "";
    };
});