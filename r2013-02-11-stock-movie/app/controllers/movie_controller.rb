class MovieController < ApplicationController

    def movie
    end

  def movie_result


    movie = params[:movie].split.join("+")
    http = HTTParty.get("http://www.omdbapi.com/?i=&t=#{movie}").gsub("'","")
    @results = JSON.parse(http)

    @title = @results["Title"]
    @year = @results["Year"]
    @rated = @results["Rated"]
    @released =@results["Released"]
    @runtime =@results["Runtime"]
    @genre =@results["Genre"]
    @director =@results["Director"]
    @writers =@results["Writer"]
    @actors =@results["Actors"]
    @plot =@results["Plot"]
    @poster =@results["Poster"]

    end
end
