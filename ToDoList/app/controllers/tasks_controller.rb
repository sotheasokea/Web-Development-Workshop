class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.turbo_stream # Renders create.turbo_stream.erb
        format.html { redirect_to tasks_path }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      respond_to do |format|
        format.html { redirect_to tasks_path }
        format.turbo_stream
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.turbo_stream
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :complete)
  end

end
