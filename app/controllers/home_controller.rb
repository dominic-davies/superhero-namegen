class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]

  def common
    @hero_name = Faker::Superhero.name 
    @hero_power = Faker::Superhero.power
    @avatar = Faker::Avatar.image("my-own-slug", "50x50", "bmp", "set1", "bg1") #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1&bgset=bg1"

  end

  def index

  end

  def team

  end
end
