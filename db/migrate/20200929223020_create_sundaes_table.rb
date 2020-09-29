class CreateSundaesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sundaes do |t|
      t.json :ice_cream
      t.json :topping
      
    end
  end
end
