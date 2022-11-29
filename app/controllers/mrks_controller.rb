class MrksController < ApplicationController
  before_action :set_mrk, only: %i[ show edit update destroy ]

  # GET /mrks or /mrks.json
  def index
    @mrks = Mrk.all
  end

  # GET /mrks/1 or /mrks/1.json
  def show
  end

  # GET /mrks/new
  def new
    @mrk = Mrk.new
  end

  # GET /mrks/1/edit
  def edit
  end

  # POST /mrks or /mrks.json
  def create
    @mrk = Mrk.new(mrk_params)

    respond_to do |format|
      if @mrk.save
        format.html { redirect_to mrk_url(@mrk), notice: "Mrk was successfully created." }
        format.json { render :show, status: :created, location: @mrk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mrk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mrks/1 or /mrks/1.json
  def update
    respond_to do |format|
      if @mrk.update(mrk_params)
        format.html { redirect_to mrk_url(@mrk), notice: "Mrk was successfully updated." }
        format.json { render :show, status: :ok, location: @mrk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mrk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mrks/1 or /mrks/1.json
  def destroy
    @mrk.destroy

    respond_to do |format|
      format.html { redirect_to mrks_url, notice: "Mrk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mrk
      @mrk = Mrk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mrk_params
      params.require(:mrk).permit(:m1, :m2, :m3, :m4, :m5, :total, :percent, :rank, :schol_id)
    end
end
