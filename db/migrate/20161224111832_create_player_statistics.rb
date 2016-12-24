class CreatePlayerStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :player_statistics do |t|
      t.timestamps
    end
  end
end
