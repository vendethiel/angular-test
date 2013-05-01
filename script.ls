export not function TaskCtrl($scope)
	$scope.tasks =
		* done: true  text: 'you did it'
		* done: false text: 'hey bruv'
	$scope.formMode = false

	$scope.remaining = ->
		$scope.tasks.count -> not it.done

	$scope.addTask = !->
		if $scope.taskText
			$scope.tasks.push done: false text: that
		$scope.formMode = false

	$scope.clean = !->
		$scope.tasks = [task for task in $scope.tasks when not task.done]