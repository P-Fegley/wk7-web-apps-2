class TacosController < ApplicationController

  def index
    @fillings = ["Carnitas", "Al Pastor", "Steak", "Fish", "Veggie"]

    render :template => "tacos/index"  # Note: you don't need this if you're following the pattern of file use (e.g. your index file is under views>tacos)
  end

end