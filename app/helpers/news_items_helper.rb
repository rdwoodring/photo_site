module NewsItemsHelper
	def news_for_homepage
		newsforhomepage = NewsItem.order("created_at DESC").limit(10)
	end
end
