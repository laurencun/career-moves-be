class Api::JobPostingsController < ApplicationController
  def index
    jobpostings = JobPosting.all
    render json: jobpostings, status: 200
  end
end