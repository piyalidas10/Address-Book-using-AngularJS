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