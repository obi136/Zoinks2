class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

    def new
      render :new
    end

    def create
      if !params[:username]
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
          u.password = SecureRandom.hex(20)
        end
      else
      @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_path(@user) and return
        else
          flash[:notice] = "Invalid username or password"
          redirect_to login_path and return
        end
      end
      session[:user_id] = @user.id
      redirect_to user_path(@user)

    end

    def destroy
      session.delete(:user_id)
      flash[:notice] = "Goodbye!"
      redirect_to login_path
    end

    private

    def auth
      request.env['omniauth.auth']
    end

end
