
class CatsController < ApplicationController


  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(user_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages, status: 422
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def update
    #debugger
    @cat = Cat.find(params[:id])

    if @cat.update(user_params)
      redirect_to cats_url
    else
      render json: @cat.errors.full_messages, status: 422
    end

  end




  private
  def user_params
    params.require(:cat).permit(:birthdate, :color, :name, :sex, :description)
  end

end