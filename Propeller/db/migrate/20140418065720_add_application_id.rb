class AddApplicationId < ActiveRecord::Migration
  def change
    add_column :devices, :application_id, :integer
  end
end
