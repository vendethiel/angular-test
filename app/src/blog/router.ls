module.exports = !($routeProvider) ->
	article-show =
		template-url: '/blog/article/index.html'
		controller: 'ArticleCtrl'

	$routeProvider
		.when '/article' article-show
		.when '/category/:cat' article-show
		.otherwise redirect-to: '/article'