class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :tipo
      t.decimal :value, precision: 8, scale: 2
      t.string :sentido
      t.text :descricao
      t.integer :user_id

      t.timestamps
    end
  end
end

