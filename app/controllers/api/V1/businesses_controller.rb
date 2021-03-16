class Api::V1::BusinessesController < ApplicationController
  def index
    @businesses = Busniess.all
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
    @business = Business.find(params[:id])
    if @business
      render json: BusinessSerializer.new(@business).serializable_hash.to_json
    else 
      render json: {message: 'Business not found'}
    end
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      render json: BusinessSerializer.new(@business).serializable_hash.to_json
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @business = Business.find(params[:id])
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
end
