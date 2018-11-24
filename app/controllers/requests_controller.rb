class RequestsController < ApplicationController
  before_action :find_request, only: [:show]

  def new
    @request = Request.new
  end

  def index
    @requests = Request.all
  end

  def create
    #requester_id jakoś musi byc zdefiniowany
    #@request.requester_id = current_user
    @request = Request.new(request_params)
    if @request.save
      redirect_to @request
    else
      render 'new'
    end
  end

  def show
  end




  private

  def request_params
    params.require(:request).permit(:photo, :description, :fabric, :kind, :size, :color, :requester_id)
  end

  def find_request
      @request = Request.find(params[:id])
  end
end
