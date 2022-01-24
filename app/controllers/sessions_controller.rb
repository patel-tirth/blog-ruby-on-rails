class SessionsController < ApplicationController


    def new

    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in"
            redirect_to user_path(user)
        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new', status: :unprocessable_entity
        end
    end

    def destroy
        session[:user_id] = nil
        # session.delete(:user_id)
        flash[:success] = "You have logged out"
        # puts "hello"
        redirect_to root_path, status: :see_other
    end
end