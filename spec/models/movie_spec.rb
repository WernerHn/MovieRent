require "rails_helper"

RSpec.describe Movie, type: :model do
  it "has a name" do
    movie = Movie.create!(title: "Avengers", price: "10", image_url: "image.jpg" )
    expect(movie.title).to eq ("Avengers")
    expect(movie.price).to eq ("10")
    expect(movie.image_url).to eq ("image.jpg")
  end
end
