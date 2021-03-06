class ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	new_product = params.require(:product).permit(:name, :price, :description)
    @product = Product.create(new_product)
    redirect_to @product
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params[:product].permit(:name, :price, :description))
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
 
    redirect_to products_path
  end

end
