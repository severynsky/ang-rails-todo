angular.module('tabsSwitcher',[])
.directive('preventDefault', function(){
        console.log("hello");

        $('#mytab a').click(function (e) {e.preventDefault();
            debugger;
        });
        return{}
});