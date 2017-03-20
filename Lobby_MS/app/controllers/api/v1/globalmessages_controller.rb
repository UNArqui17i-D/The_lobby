class Api::V1::GlobalmessagesController < ApplicationController
	respond_to :json
    skip_before_filter :verify_authenticity_token

    # Reading all globalmessages
    def index
        respond_with GlobalMessage.all
    end

    # Reading globalmessages
    def show
        respond_with GlobalMessage.find(params[:id])
    end

    # Creating globalmessages
    def create
        globalmessage = GlobalMessage.new(globalmessage_params)

        if globalmessage.save
            render json: globalmessage, status: 201
        else
            render json: { errors: globalmessage.errors}, status: 422
        end
    end

    # Updating globalmessages
    def update
        globalmessage = GlobalMessage.find(params[:id])

        if globalmessage.update(globalmessage_params)
            render json: globalmessage, status: 200
        else
            render json: { errors: globalmessage.errors }, status: 422
        end
    end

    # Deleting globalmessages
    def destroy
        globalmessage = GlobalMessage.find(params[:id])
        globalmessage.destroy
        head 204
    end

    private
    def globalmessage_params
        params.require(:globalmessage).permit(:idUser, :content)
    end
end