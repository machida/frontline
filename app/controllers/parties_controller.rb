class PartiesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  respond_to :html, :json

  def index
    if user_signed_in?
      @parties = current_user.invited_parties
    else
      @parties = Party.scoped
    end
    @parties = @parties.order("created_at desc")
    respond_with @parties
  end

  def show
    @party = Party.find(params[:id])
    respond_with @party
  end

  def new
    @party = Party.new
    @party.member_tokens=[current_user.id]
    respond_with @party
  end

  def edit
    @party = current_user.parties.find(params[:id])
    respond_with @party
  end

  def create
    @party = Party.new(params[:party])
    @party.user_id = current_user.id

    respond_to do |format|
      if @party.save
        format.html { redirect_to @party, notice: 'Party was successfully created.' }
        format.json { render json: @party, status: :created, location: @party }
      else
        format.html { render action: "new" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parties/1
  # PUT /parties/1.json
  def update
    @party = current_user.parties.find(params[:id])

    respond_to do |format|
      if @party.update_attributes(params[:party])
        format.html { redirect_to @party, notice: 'Party was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parties/1
  # DELETE /parties/1.json
  def destroy
    @party = current_user.parties.find(params[:id])
    @party.destroy

    respond_to do |format|
      format.html { redirect_to parties_url }
      format.json { head :no_content }
    end
  end
end
