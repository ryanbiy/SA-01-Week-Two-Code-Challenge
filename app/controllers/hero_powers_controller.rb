class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
    def index
      hero_powers = HeroPower.all
      render json: hero_powers
    end
  
    def show
      hero_power = find_hero_power
      render json: hero_power
    end
  
    def create
      hero_power = HeroPower.create!(hero_power_params)
      render json: hero_power, status: :created
    end
  
    def update
      hero_power = find_hero_power
      hero_power.update!(hero_power_params)
      render json: hero_power
    end
  
    def destroy
      hero_power = find_hero_power
      hero_power.destroy
      render json: { success: "Hero Power was deleted successfully" }
    end
  
    private
  
    def find_hero_power
      HeroPower.find(params[:id])
    end
  
    def hero_power_params
      params.permit(:strength, :power_id, :hero_id)
    end
  
    def render_not_found_response
      render json: { error: "Hero Power not found" }, status: :not_found
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
  