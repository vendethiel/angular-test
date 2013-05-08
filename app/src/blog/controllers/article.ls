module.exports = function ArticleCtrl($scope, titleService)
	titleService.set-title 'Blog'

	$scope.articles =
		* author: "Me" content: """
		  Hey buddy, how is it goin'
		"""
		...