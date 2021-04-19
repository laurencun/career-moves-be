class Api::JobpostingsController < ApplicationController
  def index
    jobpostings = Jobposting.all
    render json: jobpostings, status: 200
  end
end