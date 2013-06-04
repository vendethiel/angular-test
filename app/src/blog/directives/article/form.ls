angular.module 'blog.article.form' <[]>
	.directive 'articleForm' ->
		template-url: '/src/blog/templates/article/form.html'
		restrict: 'E'
		replace: true
		controller: !(Article, $scope, $location) ->
			$scope.addArticle = ->
				<-! Article.save $scope.newArticle
				$location.path '/'