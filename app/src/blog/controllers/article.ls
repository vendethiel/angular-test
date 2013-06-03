module.exports = not function ArticleCtrl(Article, titleService, $scope, $routeParams)
	titleService.set-title 'Blog'

	articles = Article.query!

	$scope.articles = if $routeParams.cat
		[article for article in articles when article.category is that]
	else articles