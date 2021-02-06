class AddCategoryIdToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :category, foreign_key: true
  end
end
