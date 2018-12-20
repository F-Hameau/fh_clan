class AddReceiptToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :receipt, :string
  end
end
