class AddAmountCollectedToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :amount_collected, :float, default: 0
  end
end
