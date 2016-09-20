class UserValueController < ApplicationController
  def index
  end

  def create
    ids = values_params[:values]
    Value.where(id: ids).each do |value|
      UserValue.create( user: current_user.id, value: value )
    end
    redirect_to actus_path
  end

  def destroy
  end

  private
  def values_params
    params.require(:id_values).permit!
end
