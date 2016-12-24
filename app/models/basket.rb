class BasketMatch
  extend ActiveModel::Naming
  attr_reader :char
#ver cuantos tiempos extra puede haber
  def initialize()
    @tiempo_muerto_equipo_A_periodo_1 
    @tiempo_muerto_equipo_B_periodo_1
    @tiempo_muerto_equipo_A_periodo_2
    @tiempo_muerto_equipo_B_periodo_2
    @tiempo_muerto_equipo_A_periodo_3
    @tiempo_muerto_equipo_B_periodo_3
    @tiempo_muerto_equipo_B_periodo_4
    @tiempo_muerto_equipo_B_periodo_4
    
    @faltas_equipo_A_periodo_1 
    @faltas_equipo_B_periodo_1
    @faltas_equipo_A_periodo_2
    @faltas_equipo_B_periodo_2
    @faltas_equipo_A_periodo_3
    @faltas_equipo_B_periodo_3
    @faltas_equipo_B_periodo_4
    @faltas_equipo_B_periodo_4
    
  end
  def self.all
    ('A'..'Z').map { |c| new(c) }
  end
  def self.find(param)
    all.detect { |l| l.char == param } 
  end
  # This method is not required because we are not using letter resource
  # def to_param
  #   @char.downcase
  # end
  def products
    Product.where("name LIKE ?", @char + '%').order("name")
  end
  def to_model
    # You will get to_model error, if you don't have this dummy method
  end
  # You need this otherwise you get an error
  def persisted?
    false
  end
end