class JoinsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :json

  # def create
  #   @join = Join.new(params[:join])
  # 
  #   respond_to do |format|
  #     if @join.save
  #       format.html { redirect_to @join, notice: 'Join was successfully created.' }
  #       format.json { render json: @join, status: :created, location: @join }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @join.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def update
    @join = Join.find(params[:id])
    @join.update_attributes(params[:join])
    render :json => @join
  end

  # def destroy
  #   @join = Join.find(params[:id])
  #   @join.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to joins_url }
  #     format.json { head :no_content }
  #   end
  # end
end
