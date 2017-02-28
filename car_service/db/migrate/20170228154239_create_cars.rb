class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :mileage
      t.string :customer
      t.string :img_url
      t.references :problem, index: true, foreign_key: true
    end
  end
end