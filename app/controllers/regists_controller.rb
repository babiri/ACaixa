class RegistsController < ApplicationController
  before_action :find_regist, only: [:show, :edit, :update, :destroy]

  def index
    @regists = Regist.all
  end

  def show
  end

  def new
    @regist = Regist.new
  end

  def create
    @regist = Regist.new(regist_params)
    @regist.user = current_user
    if @regist.save
      redirect_to regists_path, notice: 'Registo criado com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @regist.update(regist_params)
      redirect_to @regist, notice: 'Registo modificado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @regist.destroy

    redirect_to regists_path
  end

  private

  def find_regist
    @regist = Regist.find(params[:id])
  end

  def regist_params
    params.require(:regist).permit(:caixa, :five, :ten, :twenty, :fifty, :hund, :two_hund, :five_hund, :coin, :reforco, :payment, :caixa_value)
  end
end
