class GlobalmessagesController < ApplicationController
  before_action :set_globalmessage, only: [:show, :edit, :update, :destroy]

  # GET /globalmessages
  # GET /globalmessages.json
  def index
    @globalmessages = Globalmessage.all
  end

  # GET /globalmessages/1
  # GET /globalmessages/1.json
  def show
  end

  # GET /globalmessages/new
  def new
    @globalmessage = Globalmessage.new
  end

  # GET /globalmessages/1/edit
  def edit
  end

  # POST /globalmessages
  # POST /globalmessages.json
  def create
    @globalmessage = Globalmessage.new(globalmessage_params)

    respond_to do |format|
      if @globalmessage.save
        format.html { redirect_to @globalmessage, notice: 'Globalmessage was successfully created.' }
        format.json { render :show, status: :created, location: @globalmessage }
      else
        format.html { render :new }
        format.json { render json: @globalmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /globalmessages/1
  # PATCH/PUT /globalmessages/1.json
  def update
    respond_to do |format|
      if @globalmessage.update(globalmessage_params)
        format.html { redirect_to @globalmessage, notice: 'Globalmessage was successfully updated.' }
        format.json { render :show, status: :ok, location: @globalmessage }
      else
        format.html { render :edit }
        format.json { render json: @globalmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /globalmessages/1
  # DELETE /globalmessages/1.json
  def destroy
    @globalmessage.destroy
    respond_to do |format|
      format.html { redirect_to globalmessages_url, notice: 'Globalmessage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_globalmessage
      @globalmessage = Globalmessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def globalmessage_params
      params.require(:globalmessage).permit(:username, :content)
    end
end
