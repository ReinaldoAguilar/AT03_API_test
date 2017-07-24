Given(/^I have gone to the Google Search page$/) do
  @hashWorld = ""
  puts "I'm on the Google search page"
end

When(/^I enter the search "([^"]*)" to the search field$/) do |arg|
  @hashWorld +=arg+" "
  puts "My search word is: %s" %arg

end

And(/^click the Search Button$/) do
  puts @hashWorld

end


Then(/^"([^"]*)" should be mentioned in the results$/) do |arg|
  puts arg
  puts @hashWorld.strip.eql?(arg)? "This is ok": "This is ERROR"
end