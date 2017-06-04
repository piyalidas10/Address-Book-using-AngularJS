
	addressbook.controller('mainCtrl',function($scope,$http,$compile,$filter)
	{
	   $http({
		   		method:'GET', 
				url:'ajax/personlist.php'
		})
		.success(function(response){
			$scope.person = response; /****Lists of person details are kept in person variable******/
			//console.log($scope.person);
			
			/****Each person details are kept in personInfo variable******/
			$scope.showDetails=function(idinput){
			 	$scope.personInfo = $filter('filter')(response, {id:idinput})[0];
				console.log($scope.personInfo);
			}
	   });
	   
	   $scope.addContact = function(){
		   //$compile service will bind the directives against your $scope
		  var compiledeHTML = $compile("<div contact-Box class='addressModal' grouplist='grouplist'></div>")($scope); 
		  $("#showDiv").append(compiledeHTML);
		};	
		
		$scope.grouplist = []; //you have to declare this array from directive in contoller
	 })
	
	addressbook.directive('contactBox', function($http) {
		return {
		  scope : {
			  grouplist : '='
		  },
		  templateUrl: 'views/contact-box.html',
		  controller:function($scope){
				$http.get("ajax/groups.php").success(function(data){
				   $scope.grouplist = data;
				   //console.log(data);
				});	
				$scope.myContact = function () {			
							$http({
								url: "ajax/addcontact.php",
								method: "POST",
								data: {
									personname: $scope.personname,
									mobile1: $scope.mobile1,
									mobile2: $scope.mobile2,
									email1: $scope.email1,
									email2: $scope.email2,
									web: $scope.web,
									homephone: $scope.homephone,
									groupname: $scope.groupname,
								},
								headers: {'Content-Type': 'application/x-www-form-urlencoded'}
							})
							.success(function(data, status, headers, config) {	
								$route.reload();				
								$scope.msg = data;
							})
							.error(function(data, status, headers, config) {
								$scope.msg = data;
							});
							
				};
				$scope.closeContact = function(){
					$("#showDiv").empty();
				};	   
		  }		  
		};
	 });