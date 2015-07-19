module TodosHelper

  def todo_params
     params.require(:todo).permit(:text, :date)
  end
end
