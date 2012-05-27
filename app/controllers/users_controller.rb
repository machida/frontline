class UsersController < ApplicationController
  def index
    @users = User.where("name like ?", "%#{params[:q]}%")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
