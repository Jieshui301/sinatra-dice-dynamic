require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:times/:sides") do
  @num_dice = params.fetch("times").to_i
  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@num_sides)

    @rolls.push(die)
 
  end

  erb(:flexible)
end
