class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
    def index
      heroes = Hero.all
      render json: heroes
    end
  
    def show
      hero = find_hero
      render json: hero, includes: [:powers]
    end
  
    def create
      hero = Hero.create!(hero_params)
      render json: hero, status: :created
    end
  
    def update
      hero = find_hero
      hero.update!(hero_params)
      render json: hero
    end
  
    def destroy
      hero = find_hero
      hero.destroy
      render json: { success: "Hero was deleted successfully" }
    end
  
    private
  
    def find_hero
      Hero.find(params[:id])
    end
  
    def hero_params
      params.permit(:name, :super_name)
    end
  
    def render_not_found_response
      render json: { error: "Hero not found" }, status: :not_found
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  