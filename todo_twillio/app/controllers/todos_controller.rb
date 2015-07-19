class TodosController < ApplicationController

  include TodosHelper

  def index
    @todos = Todo.all
    @todo = Todo.new

  end

  def show
    @todo =Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
    flash.notice = "Task '#{@todo.text}' created!"
    redirect_to todos_path
  end

  def create
    @todo = Todo.new (todo_params)
    @todo.save
    flash.notice = "Task '#{@todo.text}' added!"
    redirect_to todos_path(@todo)
  end

  def edit
    @todo=Todo.find(params[:id])
    
  end

  def update
    @todo=Todo.find(params[:id])

    if @todo.update(todo_params)
      flash.notice = "Task '#{@todo.text}' updated!"
      redirect_to todos_path
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
