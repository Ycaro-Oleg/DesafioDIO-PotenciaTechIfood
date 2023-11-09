# Função para calcular o nível baseado no saldo de vitórias
def calcular_nivel(vitorias, derrotas)
  saldo_vitorias = vitorias - derrotas
  
  nivel = case saldo_vitorias
          when 0..10
            'Ferro'
          when 11..20
            'Bronze'
          when 21..50
            'Prata'
          when 51..80
            'Ouro'
          when 81..90
            'Diamante'
          when 91..100
            'Lendário'
          else
            'Imortal' if saldo_vitorias >= 101
          end

  return saldo_vitorias, nivel
end

# Função para imprimir o saldo de vitórias e o nível
def imprimir_resultado(vitorias, derrotas)
  saldo_vitorias, nivel = calcular_nivel(vitorias, derrotas)
  puts "O Herói tem um saldo de #{saldo_vitorias} e está no nível de #{nivel}"
end

# Exemplo de uso da função
imprimir_resultado(55, 20) # Deve retornar o saldo e o nível correspondente às vitórias e derrotas.
