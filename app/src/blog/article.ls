require './directives/article/form'

angular.module 'blog.article' <[blog.article.form blog.templates]>
	.factory 'Article' require './resources/article'
	.controller 'ArticleCtrl' require './controllers/article'