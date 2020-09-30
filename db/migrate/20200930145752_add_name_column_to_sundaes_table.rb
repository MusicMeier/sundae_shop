class AddNameColumnToSundaesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :sundaes, :name, :string
  end
end
