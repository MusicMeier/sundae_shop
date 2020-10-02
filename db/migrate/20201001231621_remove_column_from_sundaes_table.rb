class RemoveColumnFromSundaesTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :sundaes, :name, :string
  end
end
