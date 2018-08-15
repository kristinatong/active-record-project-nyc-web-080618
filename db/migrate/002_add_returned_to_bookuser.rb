class AddReturnedToBookuser < ActiveRecord::Migration[4.2]
  def change
    add_column :bookusers, :returned, :boolean
  end
end
