class AddIdTextDate < ActiveRecord::Migration
  def change

    add_column :todos, :text, :string
    add_column :todos, :date, :string

  end
end
