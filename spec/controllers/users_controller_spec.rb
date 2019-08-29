require "spec_helper"

describe "Users Controller" do

    describe "logs in a user" do 

        it "can visit '/login'" do
            get '/login'
            expect(last_response.status).to eq(200)
        end

        it "'/login' has a input field for name" do
            visit '/login'
            expect(page).to have_field('name')
        end

        it "'/login' has a input field for password" do
            visit '/login'
            expect(page).to have_field('password')
        end

        it "'/login' allows a user to login on form submission" do
            visit '/login'
            fill_in('name', :with => 'Jane')
            fill_in('password', :with => 'idk what this is going to do')
            find_button('submit').click
        end

        it "'/login' has input field" do
            visit '/login'
            within('label#name') do
                expect(page).to have_content("Your Name:") 
            end
        end

        it "'/login' will route to '/logged_in' if user exists in db" do
            visit '/login'
            fill_in('name', :with => 'Jane')
            fill_in('password', :with => 'idk what this is going to do')
                binding.pry
            click_button 'Submit'
            visit '/logged_in'
            find('h1')
        end

    end

end