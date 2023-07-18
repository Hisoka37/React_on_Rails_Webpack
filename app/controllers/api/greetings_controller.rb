class Api::GreetingsController < ApplicationController
    def hello
      random_id = rand(1..5)
      @greeting = Greeting.find(random_id)
      render json: @greeting
    end
  end