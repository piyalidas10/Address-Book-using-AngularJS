
	addressbook.controller('mainCtrl',function($scope,$http,$rootScope,$routeParams)
	{
	   $http({
		   		method:'GET', 
				url:'ajax/personlist.php'
		})
		.success(function(response){
			$scope.person = response; /****Lists of person details are kept in person variable******/
			//console.log($scope.person);
			
			/****Each person details are kept in personInfo variable******/
			$scope.showDetails= function(idinput){
			 	$scope.personInfo = response[idinput-1];
				console.log($scope.personInfo);
			}
			
	   });
	})