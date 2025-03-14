class ConfirmationsController < ApplicationController
    before_action :redirect_if_authenticated, only: [:create, :new]

    layout "login", only: [:new]

    def create
        @user = User.find_by(email: params[:user][:email].downcase)

        if @user.present? && @user.unconfirmed?
            @user.send_confirmation_email!
            redirect_to root_path, notice: "Check your email for confirmation instructions."
        else
            redirect_to new_confirmation_path, alert: "User not found."
        end
    end

    def edit
        @user = User.find_signed(params[:confirmation_token], purpose: :confirm_email)

        if @user.present? && @user.unconfirmed_or_reconfirming?
            if @user.confirm!
                login @user
                redirect_to root_path, notice: "Your account has been confirmed."
            else
                redirect_to new_confirmation_path, alert: "Something went wrong."
            end
        else
            redirect_to new_confirmation_path, alert: "Invalid token."
        end
    end

    def new
        @user = User.new
    end

end
