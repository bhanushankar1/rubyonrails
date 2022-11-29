class ScholsController < ApplicationController
  before_action :set_schol, only: %i[ show edit update destroy ]

  # GET /schols or /schols.json
  def index
    @schols = Schol.all
  end

  # GET /schols/1 or /schols/1.json
  def show
  end

  # GET /schols/new
  def new
    @schol = Schol.new
  end

  # GET /schols/1/edit
  def edit
  end

  # POST /schols or /schols.json
  def create
    @schol = Schol.new(schol_params)

    respond_to do |format|
      if @schol.save
        format.html { redirect_to schol_url(@schol), notice: "Schol was successfully created." }
        format.json { render :show, status: :created, location: @schol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schols/1 or /schols/1.json
  def update
    respond_to do |format|
      if @schol.update(schol_params)
        format.html { redirect_to schol_url(@schol), notice: "Schol was successfully updated." }
        format.json { render :show, status: :ok, location: @schol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schols/1 or /schols/1.json
  def destroy
    @schol.destroy

    respond_to do |format|
      format.html { redirect_to schols_url, notice: "Schol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schol
      @schol = Schol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schol_params
      params.require(:schol).permit(:name, :age, :phone, :email, :address)
    end
end
