class ClinicasVeterinariasController < ApplicationController
  before_action :set_clinicas_veterinaria, only: [:show, :edit, :update, :destroy]

  # GET /clinicas_veterinarias
  # GET /clinicas_veterinarias.json
  def index
    @clinicas_veterinarias = ClinicasVeterinarias.all
  end

  # GET /clinicas_veterinarias/1
  # GET /clinicas_veterinarias/1.json
  def show
  end

  # GET /clinicas_veterinarias/new
  def new
    @clinicas_veterinaria = ClinicasVeterinarias.new
  end

  # GET /clinicas_veterinarias/1/edit
  def edit
  end

  # POST /clinicas_veterinarias
  # POST /clinicas_veterinarias.json
  def create
    @clinicas_veterinaria = ClinicasVeterinarias.new(clinicas_veterinaria_params)

    respond_to do |format|
      if @clinicas_veterinaria.save
        format.html { redirect_to @clinicas_veterinaria, notice: 'Clinicas veterinarias was successfully created.' }
        format.json { render :show, status: :created, location: @clinicas_veterinaria }
      else
        format.html { render :new }
        format.json { render json: @clinicas_veterinaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicas_veterinarias/1
  # PATCH/PUT /clinicas_veterinarias/1.json
  def update
    respond_to do |format|
      if @clinicas_veterinaria.update(clinicas_veterinaria_params)
        format.html { redirect_to @clinicas_veterinaria, notice: 'Clinicas veterinarias was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinicas_veterinaria }
      else
        format.html { render :edit }
        format.json { render json: @clinicas_veterinaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicas_veterinarias/1
  # DELETE /clinicas_veterinarias/1.json
  def destroy
    @clinicas_veterinaria.destroy
    respond_to do |format|
      format.html { redirect_to clinicas_veterinarias_index_url, notice: 'Clinicas veterinarias was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinicas_veterinaria
      @clinicas_veterinaria = ClinicasVeterinarias.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clinicas_veterinaria_params
      params.require(:clinicas_veterinaria).permit(:nome, :telefone, :email, :endereco)
    end
end
