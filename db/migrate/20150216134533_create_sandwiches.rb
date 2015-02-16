class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.string :topping_one
      t.string :topping_two

      t.timestamps null: false
    end
  end
end
