class CreateTransfers < ActiveRecord::Migration[5.0]
  def change
    create_table :transfers do |t|
      t.string :from
      t.string :to
      t.decimal :value, precision: 8, scale: 2
      t.integer :user_id
      t.integer :dia
      t.string :mes
      t.integer :ano

      t.timestamps
    end
  end
end
