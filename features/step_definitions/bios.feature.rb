Given(/^that I am a user with a bio$/) do
  user = User.new
  user.bio = "my bio"
end

When(/^I go to my profile$/) do
  visit profile
end

Then(/^I see my bio$/) do
    expect(page).to have_content "my bio"
end

