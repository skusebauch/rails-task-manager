class TasksController < ApplicationController
  # refactor
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = Task.all
  end

  def show
    # refactor - not dry
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    # refactor - not dry
    # @task = Task.find(params[:id])
  end

  def update
    # refactor not dry
    # @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    # refactor not dry
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  # refactor method
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    # strong params
    params.require(:task).permit(:title, :details, :completed)
  end
end
