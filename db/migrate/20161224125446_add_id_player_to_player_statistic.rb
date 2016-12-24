class AddIdPlayerToPlayerStatistic < ActiveRecord::Migration[5.0]
  def change
     add_reference :player_statistics, :player, foreign_key: true
  end
end
