class Api::V1::RvsController < ApplicationController
  def index
    rvs = Rv.all
    render json: RvSerializer.new(rvs).serializable_hash.to_json, status: 200
  end

  def show
    rv = Rv.find(params[:id])
    render json: RvSerializer.new(rv).serializable_hash.to_json, status: 200
  end

  def create
    validate_parameters
    rv = Rv.create(
      make: params[:make],
      model: params[:model],
      year: params[:year],
      description: params[:description],
      image_url: params[:image_url],
      daily_rate: params[:daily_rate])
    render json: RvSerializer.new(rv).serializable_hash.to_json, status: 201
  end

  def destroy
    rv = Rv.find(params[:id])
    rv.destroy
    render json: {"message": "Rv is deleted"}, status: 200
  end

  def update
    validate_parameters
    rv = Rv.find(params[:id])
    rv.update(
      make: params[:make],
      model: params[:model],
      year: params[:year],
      description: params[:description],
      image_url: params[:image_url],
      daily_rate: params[:daily_rate])
    render json:  RvSerializer.new(rv).serializable_hash.to_json, status: 200
  end

  private
  def validate_parameters
    if !(params[:make].present? and params[:model].present? and params[:year].present? and
      params[:description].present? and params[:image_url].present? and params[:daily_rate].present?)
      raise ActionController::BadRequest.new(), "Parameter missing in request body."
    elsif params[:daily_rate] <= 0
      raise ActionController::BAdRequest.new(), "Daily rate must be a positive number bigger than 0."
    end
    puts status
  end
end
