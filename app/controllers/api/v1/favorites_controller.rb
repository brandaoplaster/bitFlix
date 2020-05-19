class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy

  def index
  end

  def create
  end

  def destroy
  end

  private

  def set_favorite
    @favorite = Favorite.find_by(favorite_type: params[:type].capitalize!, favorite_id: params[:id], user: current_user)
  end
end
