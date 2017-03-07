class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    # problem is that params is nil, Why?

    new_task = Task.new(name: params[:task][:name], due_date: params[:task][:due_date], priority: params[:task][:priority])
    new_task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.name = params[:task][:name]
    @task.done = params[:task][:done]
    @task.due_date = params[:task][:due_date]
    @task.save
    redirect_to task_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_param
    params.require(:task).permit(:name, :due_date, :done)
  end

end
