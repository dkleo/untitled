'use strict';

angular.module('numbersApp', [])
    .filter('largestPrime', function() {
        function isPrime(value) {
            for(var i = 2; i < value; i++) {
                if(value % i === 0) {
                    return false;
                }
            }
            return value > 1;
        }
        return function(value) {
            var maxPrime = 2;
            for(var i = 2; i < value; i++) {
                if(isPrime(i)) {
                    maxPrime = Math.max(maxPrime, i);
                }
            }

            return maxPrime;

        };
    })
    .controller('numbersAppController', ['$scope', '$http', '$interval', '$filter', 'largestPrimeFilter', function ($scope, $http, $interval, largestPrimeFilter) {
        $scope.rows = [];

        $scope.addRow = function(number) {
            $scope.rows.push(number);
        };

        var stop;
        $scope.getNumber = function () {
            //do the first get number on page load.
            $http({
                method: 'GET',
                url: 'numbers'
            }).then(function successCallback(response) {
                $scope.addRow(response.data.number);
            }, function errorCallback(response) {
                //alert('an error occurred.');
            });

            //repeat get number every 2 seconds
            if ( angular.isDefined(stop) ) return;
            stop = $interval(function(){
                $http({
                    method: 'GET',
                    url: 'numbers'
                }).then(function successCallback(response) {
                    $scope.addRow(response.data.number);
                }, function errorCallback(response) {
                    //alert('an error occurred.');
                });
            }, 2000)
        };

        $scope.stop = function() {
            if(angular.isDefined(stop)) {
                $interval.cancel(stop);
                stop = undefined;
            }
        };

        $scope.$on('$destroy', function(){
            $scope.stop();
        });
    }]);