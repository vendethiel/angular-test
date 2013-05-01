module.exports = function TaskCtrl($scope)
	$scope <<<
		tasks:
			* done: true  text: 'you did it'
			* done: false text: 'hey bruv'
		formMode: false

		remaining: ->
			$scope.tasks.count -> not it.done

		addTask: !->
			if $scope.taskText
				$scope.tasks.push done: false text: that
			$scope.formMode = false

		clean: !->
			$scope.tasks = tasks.filter -> not it.done