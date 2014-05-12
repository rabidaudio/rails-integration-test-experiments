require 'spec_helper'

describe "StaticPages" do
    describe "Home Page" do
        it "should respond with 200" do
            # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
            visit '/static_pages/home'
            response.status.should be(200)
        end

        it "should say 'Welcome'" do
            visit '/static_pages/home'
            expect(page).to have_content('Welcome')
        end
    end
end
