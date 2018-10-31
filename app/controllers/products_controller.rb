require 'aws-sdk-s3'

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # render plain: params.require(:product).inspect

    @product = Product.new(product_params)

    # Make an object in your bucket for your upload
    s3 = Aws::S3::Resource.new()
    obj = s3.bucket('url-aws-course').object('test.jpg')
    image = params[:attachment]
    image.inspect
    obj.put(body: image)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:title, :text, :attachment)
  end
end
