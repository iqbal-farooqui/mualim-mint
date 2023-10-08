class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :payment_type
      t.date :month
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
