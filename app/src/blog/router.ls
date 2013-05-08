module.exports = !($routeProvider) ->
	$routeProvider
		.when '/article' template-url: '/src/blog/templates/article/index.html'
		.otherwise redirect-to: '/article'