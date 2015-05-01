class CreateMyCoffees < ActiveRecord::Migration
  def change
    create_table :my_coffees do |t|
      t.string :name
      t.string :roast
      t.boolean :ground
      t.string :origin
      t.text :notes

      t.timestamps
    end
  end
end
