module HomeHelper

  def api_key
    ENV['API_KEY']
  end

  def base_url
    "https://api.data.gov/ed/collegescorecard/v1/schools?api_key=#{api_key}&fields=id,school.name,school.state,location.lat,location.lon&per_page=100"
  end

  def schools
    return unless params[:search].present?
    response = HTTParty.get(
      base_url + "&school.name=#{params[:search]}",
      format: :plain
    )
    data = JSON.parse response, symbolize_names: true
    data[:results]
  end


  def map?
    params[:search].present?
  end


  def test
    "hola mundo"
  end
end
