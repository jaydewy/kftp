# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
    before_action :redirect_if_authenticated, only: [:create, :new]
    before_action :authenticate_user!, only: [:destroy]

    layout "login", only: [:new, :create]
  
    def create
      @user = User.authenticate_by(email: params[:user][:email].downcase, password: params[:user][:password])
      if @user
        if @user.unconfirmed?
          redirect_to new_confirmation_path, alert: "Incorrect email or password."
        else
          after_login_path = session[:user_return_to] || root_path
          active_session = login @user
          remember(active_session) if params[:user][:remember_me] == "1"
          redirect_to after_login_path, notice: "Signed in."
        end
      else
        flash.now[:alert] = "Incorrect email or password."
        render :new, status: :unprocessable_entity
      end
    end
  
    def destroy
      forget_active_session
      logout
      redirect_to login_path, notice: "Signed out.", status: :see_other # AKA status: 303, fixes double DELETE issue
    end
  
    def new
    end
  
  end
  