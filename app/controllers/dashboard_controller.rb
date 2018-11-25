class DashboardController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @requests = Request.all.page(params[:page])
    @socks = Sock.all.order(:created_at).page(params[:page])
  end

  def mine
    @requests =  current_user.requests.page(params[:page])
    @socks = current_user.socks.page(params[:page])
  end

end
