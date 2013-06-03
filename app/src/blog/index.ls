angular.module 'blog' <[blog.templates]>
	.factory 'Article' require './resources/article'
	.config require './router'

require './controllers'