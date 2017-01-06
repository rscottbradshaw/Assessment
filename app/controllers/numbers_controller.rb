class NumbersController < ApplicationController
  before_action :authenticate_user!
  def index
    @numbers = Number.all
  end

  def show
    @number = Number.find(params[:id])
  end

  def new
    @number = Number.new
  end

  def edit
    @number = Number.find(params[:id])
  end

  def create
    @number = Number.new(number_params)

    if @number.save
      redirect_to @number
    else
      render 'new'
    end
  end

  def update
    @number = Number.find(params[:id])

    if @number.update(number_params)
      redirect_to @number
    else
      render 'edit'
    end
  end

  def destroy
    @number = Number.find(params[:id])
    @number.destroy

    redirect_to numbers_path
  end

  private
    def number_params
      params.require(:number).permit(:value)
    end
end
