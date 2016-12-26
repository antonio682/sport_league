class BasketMatch
  extend ActiveModel::Naming
  attr_accessor :team_A, :team_B, :tournament, :category, :date_time, :referee_1, :referee_2, :venue
  attr_accessor :break_team_A_period_1, :break_team_B_period_1, :break_team_A_period_2, :break_team_B_period_2
  attr_accessor :break_team_A_period_3, :break_team_B_period_3, :break_team_A_period_4, :break_team_B_period_4
  attr_accessor :faults_team_A_period_1, :faults_team_B_period_1, :faults_team_A_period_2, :break_team_B_period_2
  attr_accessor :faults_team_A_period_3, :faults_team_B_period_3, :faults_team_A_period_4 :break_team_B_period_4
  
  def initialize( team_A, team_B, tournament, category, date_time, referee_1, referee_2, venue,
                 break_team_A_period_1, break_team_B_period_1, break_team_A_period_2, break_team_B_period_2, 
                 break_team_A_period_3, break_team_B_period_3, break_team_A_period_4, break_team_B_period_4,
                 faults_team_A_period_1, faults_team_B_period_1, faults_team_A_period_2, faults_team_B_period_2,
                 faults_team_A_period_3, faults_team_B_period_3, faults_team_A_period_4, faults_team_B_period_4 )
    @team_A = team_A
    @team_B = team_B
    @tournament = tournament
    @category = category
    @date_time = date_time
    @referee_1 = referee_1
    @referee_2 = referee_2
    @venue = venue 
    
    @break_team_A_period_1 = break_team_A_period_1
    @break_team_B_period_1 = break_team_B_period_1
    @break_team_A_period_2 = break_team_A_period_2
    @break_team_B_period_2 = break_team_B_period_2
    @break_team_A_period_3 = break_team_A_period_3
    @break_team_B_period_3 = break_team_B_period_3
    @break_team_A_period_4 = break_team_A_period_4
    @break_team_B_period_4 = break_team_B_period_4
    
    @faults_team_A_period_1 = faults_team_A_period_1
    @faults_team_B_period_1 = faults_team_B_period_1
    @faults_team_A_period_2 = faults_team_A_period_2
    @faults_team_B_period_2 = faults_team_B_period_2
    @faults_team_A_period_3 = faults_team_A_period_3
    @faults_team_B_period_3 = faults_team_B_period_3
    @faults_team_A_period_4 = faults_team_A_period_4
    @faults_team_B_period_4 = faults_team_B_period_4
    
  end
  
  def to_model
    # You will get to_model error, if you don't have this dummy method
  end
  # You need this otherwise you get an error
  def persisted?
    false
  end
end