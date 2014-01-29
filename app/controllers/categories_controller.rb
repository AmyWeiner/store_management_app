class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  end

  def new
  	@category = Category.new
  end

  def create
  	new_category = params.require(:category).permit(:name, :description)
    @category = Category.create(new_category)
    redirect_to @category
  end

  def show
  	@category = Category.find(params[:id])
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params[:category].permit(:name, :description))
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

end
