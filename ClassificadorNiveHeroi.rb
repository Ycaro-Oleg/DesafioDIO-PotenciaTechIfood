# Definição da variável com nome e experiência do herói
heroi = { nome: 'Aragorn', xp: 4500 }

# Estrutura de decisão para definir o nível baseado na experiência (XP)
case heroi[:xp]
when 0..1000
  nivel = 'Ferro'
when 1001..2000
  nivel = 'Bronze'
when 2001..5000
  nivel = 'Prata'
when 5001..7000
  nivel = 'Ouro'
when 7001..8000
  nivel = 'Platina'
when 8001..9000
  nivel = 'Ascendente'
when 9001..10000
  nivel = 'Imortal'
else
  nivel = 'Radiante' if heroi[:xp] >= 10001
end

# Exibição da mensagem
puts "O Herói de nome #{heroi[:nome]} está no nível de #{nivel}"