module.exports = function TaskCtrl($scope)
	tasks = try JSON.parse localStorage.tasks
	tasks or=
		* done: true  text: 'you did it'
		* done: false text: 'hey bruv'

	$scope <<<
		save: !->
			for task in @tasks
				delete task.old-text
			localStorage.tasks = JSON.stringify @tasks

		tasks: tasks
		form-mode: false

		hasChecked: ->
			@tasks.count (.done)

		remaining: ->
			@tasks.count -> not it.done

		clean: !->
			@tasks .= filter -> not it.done
			@save!

		addTask: !->
			if @task-text
				@tasks.push done: false text: that
			@form-mode = false
			@save!

		startEdit: !->
			it.edit-mode = true
			it.old-text = it.text

		saveEdit: !->
			it.old-text = it.text
			it.edit-mode = false
			@save!

		cancelEdit: !->
			it.edit-mode = false
			it.text = it.old-text