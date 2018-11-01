require 'httparty'

class Recipe
  include HTTParty
  APIKey = "1d700c0306fe2a800ec045a49285c8b1"
  base_uri "www.food2fork.com"

  def initialize
    @options = { query: { key: APIKey, q: 'chicken breast' } }
  end

  def for(keyword)
    
    self.class.get("/api/search", @options)
  end
end

recipes = Recipe.new
puts recipes.for("chicken")
