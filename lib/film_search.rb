require_relative 'ghibli_service'

class FilmSearch
  def films
    service.films.map do |data|
      Film.new(data)
    end
  end

  def sorted_films
    films.sort_by do |film|
     -(film.rotten_tomatoes)
    end
  end

  def service
    GhibliService.new
  end
end


