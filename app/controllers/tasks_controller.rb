class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    # After saving, redirect to the list of all tasks with the instance that was just created
    redirect_to tasks_path(@task)
  end

  private

  def task_params
    # Strong params
    params.require(:task).permit(:title, :details, :completed)
  end
end
