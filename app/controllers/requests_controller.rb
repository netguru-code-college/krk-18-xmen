class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def index
    @requests = Request.all.page(params[:page])
  end

  def mine
    @requests =  current_user.request.page(params[:page])
  end


  def create
    @request = current_user.requests.build(request_params)
    @request.save
    redirect_to @request
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
    params.require(:request).permit(:photo, :description, :fabric, :kind, :size, :color, :user_id)
  end
end
