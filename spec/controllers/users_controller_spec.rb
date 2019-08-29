require "spec_helper"

describe "Users Controller" do

    # want to be able to view the login page

    it "view the login page" do
        visit '/login'
        expect(page.status_code).to eq(200)
    end

    # want the login page to have a form with an input field for a name

    # want the login page to have a form with an input field for a password
    
    # want the form to have a clickable submit button
    it "has a clickable submit button" do
        visit '/login'
        click_button "Submit"
    end

    # want the form to have a redirect if user select "Sign Up!"
    it "can be rerouted to a new show '/signup' when hyperlink is selected" do
        visit '/login'
        click_link 'Or Sign Up!'
        expect(page.current_path).to eq('/signup')
    end
    # let's take a look at available RSPEC & Capybara 'macros'


    
end