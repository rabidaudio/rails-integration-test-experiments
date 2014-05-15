Given(/^I have an account$/) do
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
