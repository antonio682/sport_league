module BasketService
    # def getPlayers
    #     #sql = "SELECT * FROM  players WHERE JSON_CONTAINS(players, '["+ JavaScript +"]');"
    #     #records_array = ActiveRecord::Base.connection.execute(sql)
        
    #     return records_array
    # end
    
    def new_basket_match_mock
        current_match = create_match
        Match.create(match: current_match )
        return "ok 202 creado"
    end
    def get_matches
        return Match.all
    end
    #mirar si se saca luego a padre Service.class.rb 
    private
    def create_match
        match_mock = BasketMatch.new( 'team_A' ,  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B', 'tournament',  'team_B')
        return match_mock
    end
end
