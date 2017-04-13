class MessagesController < ApplicationController
  #respond_to :json
  #skip_before_filter :verify_authenticity_token

  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  #Reading all messages
  def index
    #respond_with Message.all
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  #Reading messages
  def show
    #respond_with Message.find(params[:id])
    @message = Message.find(params[:id])
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit

  end

  # POST /messages
  # POST /messages.json
  #Creating messages
  def create
    #message = Message.new(message_params)
    @message = Message.new(message_params)
    respond_to do |format|
      #if message.save
      if @message.save
        #render json: message, status: 201
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        #render json: { errors: message.errors}, status: 422
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  #Updating messages
  def update
    #message = Message.find(params[:id])
    #if message.update(message_params)
    respond_to do |format|
      if @message.update(message_params)
        #render json: message, status: 200
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        #render json: { errors: message.errors }, status: 422
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  #Deleting messages
  def destroy
    #message = Message.find(params[:id])
    #message.destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
    #head 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:iduser, :name, :content)
    end
end