# Representacion del estado del juego

module Model
  module Direction
	UP = :up
	RIGHT = :right
	DOWN = :down
	LEFT = :left
  end

  #Modelo de Coordenadas
  class Coord < Struct.new(:row, :col)
  end

  #Modelo de Comida de Serpiente
  class Food < Coord
  end

  #Modelo de la Serpiente
  class Snake < Struct.new(:positions)
  end

  #Modelo de Grilla
  class Grid < Struct.new(:rows, :cols)
  end

  #Modelo de Estado de los distintos Modelos
  class State < Struct.new(:snake, :food, :grid, :curr_direction, :game_finished)
  end

  def self.initial_state
    Model::State.new(
	Model::Snake.new([
		Model::Coord.new(1,1),
		Model::Coord.new(0,1),
	]),
	Model::Food.new(4,4),
	Model::Grid.new(8, 12),
	Direction::DOWN,
	false
    )
  end
end
