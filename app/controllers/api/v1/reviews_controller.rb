class Api::V1::ReviewsController < ApplicationController
  def index
  end

  def create
  end

  private

  def review_params
    params.require(:review).permit(:reviewable_type, :reviewable_id, :rating, :description).merge(user: current_user)
  end
end
