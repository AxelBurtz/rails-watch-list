# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
# Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
# Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

# List.create(name: "Old movies")

require "open-uri"
url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)

Movie.create(title: movie["results"][0]["original_title"], overview: movie["results"][0]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie["results"][0]["poster_path"]}", rating: movie["results"][0]["vote_average"])
Movie.create(title: movie["results"][1]["original_title"], overview: movie["results"][1]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie["results"][1]["poster_path"]}", rating: movie["results"][1]["vote_average"])
Movie.create(title: movie["results"][2]["original_title"], overview: movie["results"][2]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie["results"][2]["poster_path"]}", rating: movie["results"][2]["vote_average"])
Movie.create(title: movie["results"][3]["original_title"], overview: movie["results"][3]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie["results"][3]["poster_path"]}", rating: movie["results"][3]["vote_average"])
Movie.create(title: movie["results"][4]["original_title"], overview: movie["results"][4]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie["results"][4]["poster_path"]}", rating: movie["results"][4]["vote_average"])
