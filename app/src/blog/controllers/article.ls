module.exports = function ArticleCtrl($scope, $routeParams, titleService)
	titleService.set-title 'Blog'

	articles =
		* author: "Me" category: "1" content: """
		  Hey buddy, how is it goin'
		"""
		* author: "Somebody" category: "2" content: """
			Hey you, blabla
		"""

	if $routeParams.cat
		$scope.articles = [article for article in articles when article.category is that]