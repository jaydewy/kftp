class UsersController < ApplicationController
    # before_action :redirect_if_authenticated, only: [:create, :new]
    before_action :authenticate_user!

    def index
      # need a list of all users that eventually an admin can view and manage
      @users = User.all.order(created_at: :desc)
    end
    
    def create
        @user = User.new(create_user_params)
        if @user.save
            @user.send_confirmation_email!
            redirect_to root_path, notice: "A confirmation email has been sent to the new user."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def new
        @user = User.new
    end

    # need to update this - let admin delete other users. Low priority
    def destroy
        current_user.destroy
        reset_session
        redirect_to root_path, notice: "Your account has been deleted."
    end

    # update - admin edit users
    def edit
        @user = current_user
        @active_sessions = @user.active_sessions.order(created_at: :desc)
    end

    def update
        @user = current_user
        @active_sessions = @user.active_sessions.order(created_at: :desc)

        if @user.authenticate(params[:user][:current_password])
          if @user.update(update_user_params)
            if params[:user][:unconfirmed_email].present?
              @user.send_confirmation_email!
              redirect_to root_path, notice: "Check your email for confirmation instructions."
            else
              redirect_to root_path, notice: "Account updated."
            end
          else
            render :edit, status: :unprocessable_entity
          end
        else
          flash.now[:error] = "Incorrect password"
          render :edit, status: :unprocessable_entity
        end
    end

    private

    def create_user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def update_user_params
        params.require(:user).permit(:current_password, :password, :password_confirmation, :unconfirmed_email)
    end
end
