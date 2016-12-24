class AddStatisticsToPlayerStatistic < ActiveRecord::Migration[5.0]
  def change
      add_column :player_statistics, :statistics, :json
  end
end
