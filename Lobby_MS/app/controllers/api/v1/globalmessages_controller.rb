class Api::V1::GlobalmessagesController < ApplicationController
	respond_to :json
  	skip_before_filter :verify_authenticity_token

  	def index
        respond_with GlobalMessage.all
    end

  	def show
    	respond_with Globalmessage.find(params[:id])
  	end

  	def create
		message = Globalmessage.new(message_params)
    	if message.save 
      		render json: message, status: 201 
    	else
      		render json: { errors: message.errors}, status: 422
    	end
  	end

  	def update
    	message = Globalmessage.find(params[:id])
    	if message.update(message_params)
      		render json: message, status: 200
    	else
      		render json: { errors: message.errors }, status: 422
    	end
  	end

  	def destroy
    	message = Globalmessage.find(params[:id])
    	message.destroy
    	head 204
  	end
	
	private
	def message_params
  		params.require(:Globalmessage).permit(:username, :content)
  	end
end
