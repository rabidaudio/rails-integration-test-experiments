Given(/^I have a valid account$/) do
  @me = create(:user, active: true)
end

When(/^I log into the site$/) do
  visit '/login'
  fill_in "Username", with: @me.username
  fill_in "Password", with: "password"
  click_link "Sign in"
end

Then(/^I see my profile$/) do
    expect(page).to have_content @me.bio
end


When(/^I send my bio to a friend$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^they receive a copy$/) do
  pending # express the regexp above with the code you wish you had
end