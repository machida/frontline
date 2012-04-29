class TasksController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  # # GET /tasks
  # # GET /tasks.json
  # def index
  #   @tasks = Task.all
  # 
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @tasks }
  #   end
  # end
  # 
  # # GET /tasks/1
  # # GET /tasks/1.json
  # def show
  #   @task = Task.find(params[:id])
  # 
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @task }
  #   end
  # end
  # 
  # # GET /tasks/new
  # # GET /tasks/new.json
  # def new
  #   @task = Task.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @task }
  #   end
  # end
  # 
  # # GET /tasks/1/edit
  # def edit
  #   @task = Task.find(params[:id])
  # end

  def create
    @task = Task.new(params[:task])
    @task.user_id = current_user.id
    @task.party_id = params[:party_id]
    @task.state = "backlog"

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task.party, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PUT /tasks/1
  # # PUT /tasks/1.json
  # def update
  #   @task = Task.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @task.update_attributes(params[:task])
  #       format.html { redirect_to @task, notice: 'Task was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @task.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /tasks/1
  # # DELETE /tasks/1.json
  # def destroy
  #   @task = Task.find(params[:id])
  #   @task.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to tasks_url }
  #     format.json { head :no_content }
  #   end
  # end

  def start
    @task = current_user.tasks.find(params[:id])
    unless current_user.tasks.current(params[:party_id]).exists?
      @task.state = "current"
      @task.save
      redirect_to @task.party, notice: 'Task was successfully started.'
    else
      redirect_to @task.party, notice: 'Task was already current.'
    end
  end

  def hold
    @task = current_user.tasks.find(params[:id])
    @task.state = "backlog"
    @task.save
    redirect_to @task.party, notice: 'Task was successfully holded.'
  end

  def finish
    @task = current_user.tasks.find(params[:id])
    @task.state = "done"
    @task.save
    redirect_to @task.party, notice: 'Task was successfully finished.'
  end

end
