class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    render json: (Product.create name: product_params[:name], description: product_params[:description])
  end

  def options
    head :ok
  end

  private

  def product_params
    params
  end
end
