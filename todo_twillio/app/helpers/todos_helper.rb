module TodosHelper

  def user_params
     params.require(:todo).permit(:text, :complition_date)
  end
end
