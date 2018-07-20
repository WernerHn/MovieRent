module MovieRentHelper
  def home
    @images = Movie.all
  end
  def ale (z)
    rand(z)
  end
end




