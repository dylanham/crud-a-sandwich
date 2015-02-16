class SandwichesController < ApplicationController
  before_action :set_sandwich, only: [:show, :edit, :update, :destroy]

  def index
    @sandwiches = Sandwich.all
  end

  def show
  end

  def new
    @sandwich = Sandwich.new
  end

  def create
    @sandwich = Sandwich.new(sandwich_params)
    if @sandwich.save
      flash[:notice] = "Success"
      redirect_to @sandwich
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @sandwich.update(sandwich_params)
      flash[:notice] = "Successfully Updated"
      redirect_to @sandwich
    end
  end

  def destroy
    @sandwich.destroy
    redirect_to sandwiches_path
  end

  private

  def sandwich_params
    params.require(:sandwich).permit(:topping_one, :topping_two)
  end

  def set_sandwich
    @sandwich = Sandwich.find(params[:id])
  end

end
