class DashboardController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @requests = Request.all.page(params[:page])
    @socks = Sock.all.order(:created_at).page(params[:page])
  end

  def guest
  end
end
