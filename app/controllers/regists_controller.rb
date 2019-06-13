class RegistsController < ApplicationController
  def index
    @regists = Regist.all
  end

  def show
    @regist = Regist.find(params[:id])
  end

  def new
    @regist = Regist.new
  end

  def create
    @regist = Regist.create(regist_params)
    if @regist.save
      redirect_to @regists
    else
      render :new
    end
  end

  private

  def regist_params
    params.require(:regist).permit(:caixa, :five, :ten, :twenty, :fifty, :hund, :two_hund, :five_hund, :coin, :reforco, :payment, :caixa_value)
  end
end
