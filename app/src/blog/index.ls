require './article'
require './category'

angular.module 'blog' <[blog.article blog.category]>
	.config require './router'