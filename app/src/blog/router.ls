module.exports = !($routeProvider) ->
	article-show =
		template-url: '/src/blog/templates/article/index.html'
		controller: 'ArticleCtrl'

	$routeProvider
		.when '/article' article-show
		.when '/category/:cat' article-show
		.otherwise redirect-to: '/article'