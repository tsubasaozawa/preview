class PreimagesController < ApplicationController
  before_action :set_preimage, only: [:show, :edit, :update, :destroy]

  # GET /preimages
  # GET /preimages.json
  def index
    @preimages = Preimage.all
  end

  # GET /preimages/1
  # GET /preimages/1.json
  def show
  end

  # GET /preimages/new
  def new
    @preimage = Preimage.new
  end

  # GET /preimages/1/edit
  def edit
  end

  # POST /preimages
  # POST /preimages.json
  def create
    @preimage = Preimage.new(preimage_params)

    respond_to do |format|
      if @preimage.save
        format.html { redirect_to @preimage, notice: 'Preimage was successfully created.' }
        format.json { render :show, status: :created, location: @preimage }
      else
        format.html { render :new }
        format.json { render json: @preimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preimages/1
  # PATCH/PUT /preimages/1.json
  def update
    respond_to do |format|
      if @preimage.update(preimage_params)
        format.html { redirect_to @preimage, notice: 'Preimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @preimage }
      else
        format.html { render :edit }
        format.json { render json: @preimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preimages/1
  # DELETE /preimages/1.json
  def destroy
    @preimage.destroy
    respond_to do |format|
      format.html { redirect_to preimages_url, notice: 'Preimage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preimage
      @preimage = Preimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preimage_params
      params.require(:preimage).permit(:content, :image)
    end
end
