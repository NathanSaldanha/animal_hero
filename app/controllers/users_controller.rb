class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = 'Cadastro realizado com sucesso'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
         format.html { redirect_to root_url, notice: 'Usuário atualizado com sucesso' }
         format.json { render :show, status: :ok, location: @user }
      else   
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
    def user_params
      params.require(:user).permit(:email,:name,:password,:password_confirmation)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
