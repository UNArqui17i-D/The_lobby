class Api::V1::MessagesController < ApplicationController
    respond_to :json
    skip_before_filter :verify_authenticity_token

	#Reading all messages
    def index
        respond_with Message.all
    end

    #Reading messages
    def show
        respond_with Message.find(params[:id])
    end

    #Creating messages
    def create
        message = Message.new(message_params)
        if message.save
            render json: message, status: 201
        else
            render json: { errors: message.errors}, status: 422
        end
    end

    #Updating messages
    def update
        message = Message.find(params[:id])
       if message.update(message_params)
            render json: message, status: 200
        else
            render json: { errors: message.errors }, status: 422
        end
    end

    #Deleting messages
    def destroy
        message = Message.find(params[:id])
        message.destroy
        head 204
    end

    private
    def message_params
        params.require(:message).permit(:iduser, :content)
    end
end