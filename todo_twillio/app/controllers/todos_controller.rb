class TodosController < ApplicationController

  include TodosHelper

  def index
    @todos = Todo.all
  end

  def show
    @todo =Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
     @todo = Todo.new (user_params)
    @todo.save
    flash.notice = "Task '#{@todo.text}' added!"
    redirect_to todo_path(@todo)
  end

  def edit
    @todo=Todo.find(params[:id])
  end

  def update
    @todo=Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todo_path(@todo)
    else
      render :edit
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    flash.notice= "Task '#{@todo.text} deleted!"
    redirect_to todos_path
  end



end
