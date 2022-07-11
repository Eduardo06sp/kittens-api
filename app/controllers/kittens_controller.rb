class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to @kitten
    else
      puts 'FAILURE IT IS A FAILURE'
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
