class UsersController < ApplicationController
    
    get '/login' do
        erb :login
    end

    post '/login' do
        @user = User.find_by(name: params["name"])
        if !!@user == true
            redirect :logged_in
        else
            erb :login
        end
    end

    get '/logged_in' do
        erb :logged_in
    end

end