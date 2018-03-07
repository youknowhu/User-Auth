class CatRentalRequestsController < ApplicationController
    def new
      @request = CatRentalRequest.new
      @cats = Cat.all
      render :new
    end

    def create
      @request = CatRentalRequest.new(request_params)

      if @request.save
        redirect_to cat_url(@request.cat_id)
      else
        render json: @request.errors.full_messages
      end
    end

    def request_params
      params.require(:request).permit(:cat_id, :start_date, :end_date)
    end


end
