class BasketPlayerStatistics
  extend ActiveModel::Naming
  attr_accessor  :faults_period_1, :faults_period_2, :faults_period_3, :faults_period_4, :faults_period_extra, :points_period_1, :points_period_2, :points_period_3, :points_period_4, :points_period_extra
#ver cuantos tiempos extra puede haber
  def initialize(faults_period_1, faults_period_2, faults_period_3, faults_period_4, faults_period_extra, points_period_1, points_period_2, points_period_3, points_period_4, points_period_extra )
    @faults_period_1 = faults_period_1 
    @faults_period_2 = faults_period_2
    @faults_period_3 = faults_period_3
    @faults_period_4 = faults_period_4
    @faults_period_extra = faults_period_extra
   
    @points_period_1 = points_period_1
    @points_period_2 = points_period_2
    @points_period_3 = points_period_3
    @points_period_4 = points_period_4
    @points_period_extra = points_period_extra
  end
 

  def to_model
    # You will get to_model error, if you don't have this dummy method
  end
  # You need this otherwise you get an error
  def persisted?
    false
  end
end