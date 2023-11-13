class Hero
  attr_accessor :name, :age, :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

  def atacar
    ataque = case @type.downcase
             when 'mago' then 'usou magia'
             when 'guerreiro' then 'usou espada'
             when 'monge' then 'usou artes marciais'
             when 'ninja' then 'usou shuriken'
             else 'fez um ataque padrão'
             end
    puts "O #{@type} atacou usando #{ataque}"
  end
end

# Exemplo de uso:
heroi = Hero.new('Aragorn', 87, 'guerreiro')
heroi.atacar
