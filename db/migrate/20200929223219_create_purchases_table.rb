class CreatePurchasesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :sundae
      t.references :customer
    end
  end
end
