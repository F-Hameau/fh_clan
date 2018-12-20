class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :amount
      t.string :email
      t.references :subsidy, foreign_key: true

      t.timestamps
    end
  end
end
