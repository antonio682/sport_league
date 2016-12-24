class RemoveExtra2FieldsFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :id_player_id
  end
end
