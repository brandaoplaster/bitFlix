class Api::V1::SearchesController < ApplicationController
 
  def index
  end

  private

    def check_search_value
      if params[:value].present? && params[:value].length < 3
        render json: { errors: "Parameter :value must have at leat 3 characters" }
      end
    end
end
