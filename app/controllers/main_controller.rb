class MainController < ApplicationController

  def landing
    render({ :template => "dice_rolls/home"})

  end

  def dynamic
    @number_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @number_dice.times do
      die = rand(1..@sides)

    @rolls.push(die)
    end
  
    render ({ :template => "dice_rolls/dynamic"})
  end


  
end

  
