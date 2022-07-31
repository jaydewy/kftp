class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def new
        @camper = Camper.new
    end

    def create
        @camper = Camper.new(camper_params)
        
        if @camper.save
            redirect_to @camper
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @camper = Camper.find(params[:id])
    end

    def edit
        @camper = Camper.find(params[:id])
    end

    def update
        @camper = Camper.find(params[:id])

        if @camper.update(camper_params)
            redirect_to @camper
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @camper = Camper.find(params[:id])

        @camper.destroy
        redirect_to campers_path, status: :see_other
    end

    private
        def camper_params
            params.require(:camper).permit(:last_name, :first_name, :address, :city, :province, :postal_code, :phone, :email, :phone_2, :email_2, :notes, :addl)
        end
end
