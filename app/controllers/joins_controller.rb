class JoinsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

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

    respond_to do |format|
      if @join.update_attributes(params[:join])
        format.html { redirect_to @join.party, notice: 'Join was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
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
