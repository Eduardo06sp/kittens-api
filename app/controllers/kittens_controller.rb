class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = params[:id]
  end
end
