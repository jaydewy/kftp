class CampersController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_camper, only: %i[ edit update show destroy ]

    def index
        @campers = Camper.order(:last_name)
    end

    def new
        @camper = Camper.new
    end

    def create
        @camper = Camper.new(camper_params)
        
        respond_to do |format|
            if @camper.save
              format.html { redirect_to campers_path, notice: "Camper was successfully created." }
              format.json { render :show, status: :created, location: @camper }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @camper.errors, status: :unprocessable_entity }
            end
          end
    end

    def show
      render :edit
    end

    def edit
    end

    def update
      respond_to do |format|
          if @camper.update(camper_params)
            format.html { redirect_to params[:previous_request_source], notice: "Camper was successfully updated." }
            format.json { render :show, status: :ok, location: @camper }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @camper.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
      @camper.destroy

      respond_to do |format|
        format.html { redirect_to campers_path, status: :see_other, notice: "Camper was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private

        def set_camper
            @camper = Camper.find(params[:id])
        end

        def camper_params
            params.require(:camper).permit(:last_name, :first_name, :address, :city, :province, :postal_code, :phone, :email, :phone_2, :email_2, :notes, :addl)
        end
end
