class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :supplier, foreign_key: true
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
