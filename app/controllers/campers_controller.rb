class CampersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response

    # GET /campers
    def index
        campers = Camper.all
        render json: campers, status: :ok
    end

    # GET /campers/:id
    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperActivitiesSerializer, status: :ok
    end

    # POST /campers


    private
    def render_record_not_found_response
        render json: {error: "Camper not found"}, status: :not_found
    end
end
