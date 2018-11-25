class RequestsController < ApplicationController

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

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.save
      redirect_to @request
    else
      render 'edit'
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_path
  end

  private

  def request_params
    params.require(:request).permit(:photo, :description, :fabric, :kind, :size, :color, :requester_id)
  end
end
