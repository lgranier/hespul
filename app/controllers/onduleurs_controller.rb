class OnduleursController < ApplicationController
  before_action :set_onduleur, only: [:show, :edit, :update, :destroy]

  # GET /onduleurs
  # GET /onduleurs.json
  def index
    @onduleurs = Onduleur.all
  end

  # GET /onduleurs/1
  # GET /onduleurs/1.json
  def show
  end

  # GET /onduleurs/new
  def new
    @onduleur = Onduleur.new
  end

  # GET /onduleurs/1/edit
  def edit
  end

  # POST /onduleurs
  # POST /onduleurs.json
  def create
    @onduleur = Onduleur.new(onduleur_params)

    respond_to do |format|
      if @onduleur.save
        format.html { redirect_to @onduleur, notice: 'Onduleur was successfully created.' }
        format.json { render :show, status: :created, location: @onduleur }
      else
        format.html { render :new }
        format.json { render json: @onduleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onduleurs/1
  # PATCH/PUT /onduleurs/1.json
  def update
    respond_to do |format|
      if @onduleur.update(onduleur_params)
        format.html { redirect_to @onduleur, notice: 'Onduleur was successfully updated.' }
        format.json { render :show, status: :ok, location: @onduleur }
      else
        format.html { render :edit }
        format.json { render json: @onduleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onduleurs/1
  # DELETE /onduleurs/1.json
  def destroy
    @onduleur.destroy
    respond_to do |format|
      format.html { redirect_to onduleurs_url, notice: 'Onduleur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onduleur
      @onduleur = Onduleur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onduleur_params
      params.require(:onduleur).permit(:lb, :description)
    end
end
