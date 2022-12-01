class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power
    end 

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
    end
end
