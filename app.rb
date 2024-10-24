require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get('/rock') do
  rolls = ["rock", "paper", "scissors"]
  @their_roll = rolls.sample 
  @our_roll = "rock"
  

  if @our_roll == @their_roll
    @result = "We tied!"
  elsif @our_roll == "rock" && @their_roll == "scissors"
    @result = "We won!" 
  elsif @our_roll == "paper" && @their_roll == "rock"
    @result = "We won!" 
  elsif @our_roll == "scissors" && @their_roll == "paper"
    @result = "We won!" 
  else
    @result = "We lost!"
  end

  erb(:rollresult)
end

get('/paper') do
  rolls = ["rock", "paper", "scissors"]
  @their_roll = rolls.sample
  @our_roll = "paper"

  if @our_roll == @their_roll
    @result = "We tied!"
  elsif @our_roll == "rock" && @their_roll == "scissors"
    @result = "We won!" 
  elsif @our_roll == "paper" && @their_roll == "rock"
    @result = "We won!" 
  elsif @our_roll == "scissors" && @their_roll == "paper"
    @result = "We won!" 
  else
    @result = "We lost!"
  end

  erb(:rollresult)
end

get('/scissors') do
  rolls = ["rock", "paper", "scissors"]
  @their_roll = rolls.sample
  @our_roll = "scissors"

  if @our_roll == @their_roll
    @result = "We tied!"
  elsif @our_roll == "rock" && @their_roll == "scissors"
    @result = "We won!" 
  elsif @our_roll == "paper" && @their_roll == "rock"
    @result = "We won!" 
  elsif @our_roll == "scissors" && @their_roll == "paper"
    @result = "We won!" 
  else
    @result = "We lost!"
  end
  
  erb(:rollresult)
end
