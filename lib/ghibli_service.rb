class GhibliService
  def films
    get_url("/films")
  end

  def get_url(url)
    response = Faraday.get("https://ghibliapi.herokuapp.com#{url}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

