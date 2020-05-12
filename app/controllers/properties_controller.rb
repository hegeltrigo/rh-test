class PropertiesController < ApplicationController

  before_action :authenticate_user!


  before_action :set_property, only: [:buy]

  
  def buy
    @property.buyer = current_user
    respond_to do |format|
      if @property.save
        format.html { redirect_to root_path, notice: 'Property was successfully created.' }
      else
        format.html { redirect_to root_path, error: 'Error on buy.' }
      end
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:user_id, :address, :sqmt, :price)
    end
end
