class OngsController < ApplicationController
  def index
    @ongs = Ong.order('created_at DESC')
  end

  def new
    @ong = Ong.new
  end

  def create
    @ong = Ong.new(ong_params)
    if @ong.save
      flash[:success] = "Ong added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @ong = Ong.find(params[:id])
  end

  private

  def ong_params
    params.require(:ong).permit(:nome_instituicao, :email, :cpnj, :endereco)
  end
end
