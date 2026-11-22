class UsersController < ApplicationController
  # Refer to https://stevepolito.design/blog/rails-authentication-from-scratch for the guide used to create this authenticaiton system
    # before_action :redirect_if_authenticated, only: [:create, :new]
    # We need a user to be able to create other users, so we don't need the redirect above
    before_action :authenticate_user!
    before_action :set_user, only: %i[ edit ]

    # modify the actions to 1. allow an admin to work on other Users and 2. still allow a logged in user to make changes to themself

    def index
      # need a list of all users that eventually an admin can view and manage
      @users = User.all.order(created_at: :desc)
    end
    
    def create
      # tailor this to an admin creating new users, rather than a user signing up for themselves. We don't want to log in the new user, just create them.
      #   redirect/return to previous page 
        @user = User.new(create_user_params)
        if @user.save
          # original implementation. For back office purposes only, no need to do the full confirmation process.
          # @user.send_confirmation_email!
          # redirect_to users_path, notice: "A confirmation email has been sent to the new user."
          @user.confirm!
          redirect_to users_path, notice: "User account has been created."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def new
        @user = User.new
    end

    # need to update this - let admin delete other users. Low priority
    def destroy
      if params[:id].present?
          user = User.find(params[:id])
          user.destroy
          redirect_to users_path, notice: "User account has been deleted.", status: :see_other
      else
          current_user.destroy
          reset_session
          redirect_to root_path, notice: "Your account has been deleted."
      end
    end

    def edit
      # user being set in callback
        @active_sessions = @user.active_sessions.order(created_at: :desc)
    end

    def update
        @user = User.find(params[:id])
        @active_sessions = @user.active_sessions.order(created_at: :desc)

        if @user.authenticate(params[:user][:current_password])
          if @user.update(update_user_params)
            if params[:user][:unconfirmed_email].present?
              # @user.send_confirmation_email!
              # redirect_to users_path, notice: "Check your email for confirmation instructions."
              @user.confirm!
              redirect_to users_path, notice: "Account updated and email confirmed."
            else
              redirect_to users_path, notice: "Account updated."
            end
          else
            # flash.now[:error] = "Update failed for #{@user}"
            flash.now.alert = "Update failed for #{@user}"
            render :edit, status: :unprocessable_entity
          end
        else
          flash.now.alert = "Incorrect password "
          # flash.now[:error] = "Incorrect password"
          
          render :edit, status: :unprocessable_entity
        end
    end

    private

    def set_user
        if params[:id].present?
          @user = User.find(params[:id])
        else
          @user = current_user
        end
    end

    def create_user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :username)
    end

    def update_user_params
        params.require(:user).permit(:current_password, :password, :password_confirmation, :unconfirmed_email, :firstname, :lastname, :username)
    end
end
