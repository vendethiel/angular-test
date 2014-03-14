require './article'
require './category'

angular.module 'blog' <[blog.article blog.category ngRoute]>
	.config require './router'