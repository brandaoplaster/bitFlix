class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy

  def index
    @favorite = current_user.favorite.all
    render json: Api::V1::WatchableSerializer.new(@favorite.map(&:favoritable)).serialized_json
  end

  def create
  end

  def destroy
  end

  private

  def set_favorite
    @favorite = Favorite.find_by(favorite_type: params[:type].capitalize!, favorite_id: params[:id], user: current_user)
  end

  def favorite_params
    params.require(:favorite).permit(:favorite_type, :favorite_id)
  end
end
