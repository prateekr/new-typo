Given /^I am logged in as "(.*)" with pass "(.*)"/ do |user_name, password|
  visit '/accounts/login'
  fill_in 'user_login', :with => user_name
  fill_in 'user_password', :with => password
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end