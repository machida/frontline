class JoinsController < ApplicationController
  # GET /joins
  # GET /joins.json
  def index
    @joins = Join.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @joins }
    end
  end

  # GET /joins/1
  # GET /joins/1.json
  def show
    @join = Join.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @join }
    end
  end

  # GET /joins/new
  # GET /joins/new.json
  def new
    @join = Join.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @join }
    end
  end

  # GET /joins/1/edit
  def edit
    @join = Join.find(params[:id])
  end

  # POST /joins
  # POST /joins.json
  def create
    @join = Join.new(params[:join])

    respond_to do |format|
      if @join.save
        format.html { redirect_to @join, notice: 'Join was successfully created.' }
        format.json { render json: @join, status: :created, location: @join }
      else
        format.html { render action: "new" }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /joins/1
  # PUT /joins/1.json
  def update
    @join = Join.find(params[:id])

    respond_to do |format|
      if @join.update_attributes(params[:join])
        format.html { redirect_to @join, notice: 'Join was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joins/1
  # DELETE /joins/1.json
  def destroy
    @join = Join.find(params[:id])
    @join.destroy

    respond_to do |format|
      format.html { redirect_to joins_url }
      format.json { head :no_content }
    end
  end
end
