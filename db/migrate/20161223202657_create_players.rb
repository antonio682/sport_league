class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.integer :number
      t.date :birth_date
      t.boolean :status
      
      t.timestamps
    end
  end
end
