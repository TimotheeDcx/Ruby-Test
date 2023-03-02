class IanimalsController < ApplicationController
  before_action :set_pokemon, only: %i[ show edit update destroy ]

  # GET /ianimals or /ianimals.json
  def index
    @ianimals = Ianimal.all
  end

  # GET /ianimals/1 or /ianimals/1.json
  def show
  end

  # GET /ianimals/new
  def new
    @ianimal = Ianimal.new
  end

  # GET /ianimals/1/edit
  def edit
  end

  # POST /ianimals or /ianimals.json
  def create
    @ianimal = Ianimal.new(pokemon_params)

    respond_to do |format|
      if @ianimal.save
        format.html { redirect_to pokemon_url(@ianimal), notice: "Ianimal was successfully created." }
        format.json { render :show, status: :created, location: @ianimal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ianimal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ianimals/1 or /ianimals/1.json
  def update
    respond_to do |format|
      if @ianimal.update(pokemon_params)
        format.html { redirect_to pokemon_url(@ianimal), notice: "Ianimal was successfully updated." }
        format.json { render :show, status: :ok, location: @ianimal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ianimal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ianimals/1 or /ianimals/1.json
  def destroy
    @ianimal.destroy

    respond_to do |format|
      format.html { redirect_to ianimals_url, notice: "Ianimal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @ianimal = Ianimal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.require(:ianimal).permit(:nompoke, :typepoke, :puissancepoke, :image)
    end
end
