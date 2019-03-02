class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]

  def common
    @hero_name = Faker::Superhero.name 
    @hero_power = Faker::Superhero.power
    
    @rand_num = rand(1..1000)
    
    @set_number = rand(1..2)

    @bg = rand(1..2)

    # Randomly pic our avatar set
    if @set_number == 1
      @set = "set1"
    else @set_number == 2
      @set = "set2"
    end

    # Randomly pic our background
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    # must be at bottom so above calculations run first
      @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", @set, @background) #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1&bgset=bg1"
  end

  def index

  end

  def team
    @team_number = params[:team_number].to_i
  end
end
