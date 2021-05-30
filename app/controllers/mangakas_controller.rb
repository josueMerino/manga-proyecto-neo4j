class MangakasController < ApplicationController
  before_action :set_mangaka, only: %i[ show edit update destroy ]

  # GET /mangakas or /mangakas.json
  def index
    @mangakas = Mangaka.all
  end

  # GET /mangakas/1 or /mangakas/1.json
  def show
  end

  # GET /mangakas/new
  def new
    @mangaka = Mangaka.new
  end

  # GET /mangakas/1/edit
  def edit
  end

  # POST /mangakas or /mangakas.json
  def create
    @mangaka = Mangaka.new(mangaka_params)

    respond_to do |format|
      if @mangaka.save
        format.html { redirect_to @mangaka, notice: "Mangaka was successfully created." }
        format.json { render :show, status: :created, location: @mangaka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mangaka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mangakas/1 or /mangakas/1.json
  def update
    respond_to do |format|
      if @mangaka.update(mangaka_params)
        format.html { redirect_to @mangaka, notice: "Mangaka was successfully updated." }
        format.json { render :show, status: :ok, location: @mangaka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mangaka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mangakas/1 or /mangakas/1.json
  def destroy
    @mangaka.destroy
    respond_to do |format|
      format.html { redirect_to mangakas_url, notice: "Mangaka was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mangaka
      @mangaka = Mangaka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mangaka_params
      params.require(:mangaka).permit(:name, :image)
    end
end
