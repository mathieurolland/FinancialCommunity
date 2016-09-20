class UsersController < ApplicationController

  def user_params
    params.require(:product).permit(:first_name, :last_name, :email, :pseudo, :rating, :birthday, :gender, :description)
  end

end
