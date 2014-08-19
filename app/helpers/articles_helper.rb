module ArticlesHelper
	# Example of custom helper method to style link
	def styled_link_to_article(article)
    css_class = "current" if article.current == true
    link_to(article.title, article, class: css_class)
	end
end
