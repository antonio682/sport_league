class AddReferencePlayerToPlayerStatistic < ActiveRecord::Migration[5.0]
  def change
       add_reference :players, :player_id, index: true
  end
end
