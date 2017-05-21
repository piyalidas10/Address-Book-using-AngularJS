# Address-Book-using-AngularJS
Mobile like address book using angularjs and mysql

app.js

	var addressbook = angular.module('addressBook',['ngRoute']);
	addressbook.config(function($routeProvider){
		$routeProvider
		.when('/', {
				templateUrl: 'views/search.html'
        })
		.when('/:id',{
		  		templateUrl : 'views/person_details.html'
		})
		.otherwise({ redirectTo: '/' });
	});
	
	addressbook.filter('capitalize', function() {
		return function(input) {
		  return (!!input) ? input.charAt(0).toUpperCase() + input.substr(1).toLowerCase() : '';
		}
	});
  
  controller.js
  
  	addressbook.controller('mainCtrl',function($scope,$http,$rootScope,$routeParams)
	{
	   $http({
		   		method:'GET', 
				url:'ajax/personlist.php'
		})
		.success(function(response){
			$scope.person = response; 
			//console.log($scope.person);
			$scope.showDetails= function(idinput){
			 	$scope.personInfo = response[idinput-1];
				console.log($scope.personInfo);
			}
			
	   });
	})
