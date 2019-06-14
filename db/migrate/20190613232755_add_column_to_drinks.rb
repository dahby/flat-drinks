class AddColumnToDrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :maker_id, :integer
  end
end
