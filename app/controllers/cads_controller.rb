class CadsController < ApplicationController
  before_action :set_cad, only: %i[ show edit update destroy ]

  # GET /cads or /cads.json
  def index
    @cads = Cad.all
  end

  # GET /cads/1 or /cads/1.json
  def show
  end

  # GET /cads/new
  def new
    @cad = Cad.new
  end

  # GET /cads/1/edit
  def edit
  end

  # POST /cads or /cads.json
  def create
    @cad = Cad.new(cad_params)

    respond_to do |format|
      if @cad.save
        format.html { redirect_to @cad, notice: "Cad was successfully created." }
        format.json { render :show, status: :created, location: @cad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cads/1 or /cads/1.json
  def update
    respond_to do |format|
      if @cad.update(cad_params)
        format.html { redirect_to @cad, notice: "Cad was successfully updated." }
        format.json { render :show, status: :ok, location: @cad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cads/1 or /cads/1.json
  def destroy
    @cad.destroy
    respond_to do |format|
      format.html { redirect_to cads_url, notice: "Cad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cad
      @cad = Cad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cad_params
      params.require(:cad).permit(:nome, :cnpjcpf, :ie, :celular, :telefone, :nomecont, :dtnasc, :celular2, :telefone2, :nomecont2, :email, :cep, :rua, :numcasa, :cidade, :bairro, :estado, :pais)
    end
end
