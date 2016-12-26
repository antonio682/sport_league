#Arrancar MySQL 
    sudo service mysql start o mysql-ctl start
#Instalar MySQL 5.7 
    sudo apt-get install mysql-server
    sudo service mysql stop
    sudo usermod -d /var/lib/mysql/ mysql
    sudo service mysql start

#Rails Cheat Sheet
rails s -p $PORT -b $IP # arranca servidor en c.9
rails new g new --api #generates new connect and jobs folders
rails g model name_in_singular 
rails g migration nombre

#Adding a reference migration
class AddIdPlayerToPlayerStatistic < ActiveRecord::Migration[5.0]
  def change
     add_reference :player_statistics, :player, foreign_key: true
  end
end

#removing a column from a table
class RemoveExtra2FieldsFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :id_player_id
  end
end
#generate controller with helper
rails g controller matches --helper 