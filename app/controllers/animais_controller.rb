class AnimaisController < ApplicationController
  before_action :set_animal, only: %i[ show edit update destroy new]

  # GET /animais or /animais.json
  def index
    @animais = Animal.all
  end

  # GET /animais/1 or /animais/1.json
  def show
  end

  # GET /animais/new
  def new
    @animal = Animal.new
    @botao = "Salvar"
  end

  # GET /animais/1/edit
  def edit
  end

  # POST /animais or /animais.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to animal_url(@animal), notice: "Animal cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animais/1 or /animais/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to animal_url(@animal), notice: "Animal atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animais/1 or /animais/1.json
  def destroy
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to animais_url, notice: "Animal apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      if params[:action] != 'new'
        @animal = Animal.find(params[:id])
        @botao = "Atualizar"
      end  
      @situacao = [['Abandonado','Abandonado'], ['Propriedade','Propriedade']]
      @sexo = [['Masculino','Masculino'], ['Feminino','Feminino']]
      @ongs = Ong.all.map{|ong| [ong.nome, ong.id] }
    end

    # Only allow a list of trusted parameters through.
    def animal_params
      params.require(:animal).permit(:nome, :raca, :especie, :sexo, :peso, :data_nascimento, :situacao, :ong_id)
    end
end
