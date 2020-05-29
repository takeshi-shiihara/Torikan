class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name,   null: false
      t.integer :phone_number, null: false
      t.integer :store
      t.string :contact_name
      t.string :agreement
      t.string :agreement_name
      t.timestamps
    end
  end
end
