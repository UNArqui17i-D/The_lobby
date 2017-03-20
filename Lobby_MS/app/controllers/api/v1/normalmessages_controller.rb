class Api::V1::NormalmessagesController < ApplicationController
	respond_to :json
    skip_before_filter :verify_authenticity_token

    # Reading all normalmessages
    def index
        respond_with NormalMessage.all
    end

    # Reading normalmessages
    def show
        respond_with NormalMessage.find(params[:id])
    end

    # Creating normalmessages
    def create
        normalmessage = NormalMessage.new(normalmessage_params)

        if normalmessage.save
            render json: normalmessage, status: 201
        else
            render json: { errors: normalmessage.errors}, status: 422
        end
    end

    # Updating normalmessages
    def update
        normalmessage = NormalMessage.find(params[:id])

        if normalmessage.update(normalmessage_params)
            render json: normalmessage, status: 200
        else
            render json: { errors: normalmessage.errors }, status: 422
        end
    end

    # Deleting normalmessages
    def destroy
        normalmessage = NormalMessage.find(params[:id])
        normalmessage.destroy
        head 204
    end

    private
    def normalmessage_params
        params.require(:normalmessage).permit(:idUserA, :idUserB, :content)
    end
end