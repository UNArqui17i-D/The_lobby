class LobbymessagesController < ApplicationController
  before_action :set_lobbymessage, only: [:show, :edit, :update, :destroy]

  # GET /lobbymessages
  # GET /lobbymessages.json
  def index
    @lobbymessages = Lobbymessage.all
  end

  # GET /lobbymessages/1
  # GET /lobbymessages/1.json
  def show
  end

  # GET /lobbymessages/new
  def new
    @lobbymessage = Lobbymessage.new
  end

  # GET /lobbymessages/1/edit
  def edit
  end

  # POST /lobbymessages
  # POST /lobbymessages.json
  def create
    @lobbymessage = Lobbymessage.new(lobbymessage_params)

    respond_to do |format|
      if @lobbymessage.save
        format.html { redirect_to @lobbymessage, notice: 'Lobbymessage was successfully created.' }
        format.json { render :show, status: :created, location: @lobbymessage }
      else
        format.html { render :new }
        format.json { render json: @lobbymessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lobbymessages/1
  # PATCH/PUT /lobbymessages/1.json
  def update
    respond_to do |format|
      if @lobbymessage.update(lobbymessage_params)
        format.html { redirect_to @lobbymessage, notice: 'Lobbymessage was successfully updated.' }
        format.json { render :show, status: :ok, location: @lobbymessage }
      else
        format.html { render :edit }
        format.json { render json: @lobbymessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lobbymessages/1
  # DELETE /lobbymessages/1.json
  def destroy
    @lobbymessage.destroy
    respond_to do |format|
      format.html { redirect_to lobbymessages_url, notice: 'Lobbymessage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lobbymessage
      @lobbymessage = Lobbymessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lobbymessage_params
      params.require(:lobbymessage).permit(:iduser, :messagecontent)
    end
end
