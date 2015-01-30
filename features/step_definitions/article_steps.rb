When /^the following articles exist:$/ do |articles|
  Article.create(articles.hashes)
end

And /^the following comments exist:$/ do |articles|
  Comment.create(articles.hashes)
end

Then /^the article "(.*?)" should have "(.*?)" having content "(.*?)"$/ do |article_name, attribute, value|
  article = Article.find_by_title(article_name)
  assert_equal article.send(attribute), value 
end

Then /^the article "(.*?)" should have comments count equal to (\d+)$/ do |article_name, count|
  article = Article.find_by_title(article_name)
  assert_equal article.comments.count, count.to_i
end