class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :date
      t.string :main_act
      t.integer :category_id 

      t.timestamps
    end
  end
end
