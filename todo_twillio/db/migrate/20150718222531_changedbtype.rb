class Changedbtype < ActiveRecord::Migration
  def change
    change_column :todos, :date, :date
  end
end
