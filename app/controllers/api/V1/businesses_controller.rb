class Api::V1::BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  def index
    @businesses = Business.all
    render json: BusinessSerializer.new(@businesses).serializable_hash.to_json
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      render json: BusinessSerializer.new(@business).serializable_hash.to_json
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def show
    if @business
      render json: BusinessSerializer.new(@business).serializable_hash.to_json
    else 
      render json: {message: 'Business not found'}
    end
  end

  def update
    if @business.update(business_params)
      render json: BusinessSerializer.new(@business).serializable_hash.to_json
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @business.destroy
      render json: {}, status: :accepted
    else
      render json: {message: 'Error deleting business'}
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :website, :state, :founded_date)
  end

  def set_business
    @business = Business.find_by_slug(params[:slug])
  end
end
