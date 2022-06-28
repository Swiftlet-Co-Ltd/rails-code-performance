class TestsController < ApplicationController

  # Query Performance
  def code1
    # Basic
    cars = Car.all

    # Optimize Select Fields
    # cars = Car.all.select(:name0)

    # Performance
    # cars = Car.all.pluck(:name0)
    
    render json: { cars: cars }
  end

  # N + 1 Query
  def code2
    # N + 1
    profile_list = User.all.map do |user|
      user.profile
    end

    # Optimize
    # profile_list = User.all.includes(:profile).map do |user|
    #   user.profile
    # end

    render json: { profile: profile_list }
  end
end
