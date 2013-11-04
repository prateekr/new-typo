Given /^"(.*)" has article "(.*)" with body "(.*)"/ do |user_name, article_title, body|
	has_article = false
	user_id = User.find_by_name(user_name).id
	Article.where("user_id = " + user_id.to_s).each do |article|
		if article.title == article_title
			has_article = true
		end
	end
    Article.create!({:title => article_title, :body => body, :user_id => user_id}) if has_article == false
end