class AddBorrowedById < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :borrow_by_id, :integer
  end
end
