class SocksController < ApplicationController

    def index
      @socks = Sock.all.order(:created_at).page(params[:page])
    
    end

    def show
        @sock = Sock.find(params[:id])
    end

    def new
        @sock = Sock.new
    end

    def create
        @sock = current_user.socks.build(socks_params)
        @sock.save
        redirect_to @sock
    end

    def edit
        @sock = Sock.find(params[:id])
    end

    def update
    @sock = Sock.find(params[:id])
  
    if @sock.update(socks_params)
      redirect_to @sock
    else
      render 'edit'
      end
    end

    def destroy
      @sock = Sock.find(params[:id])
      @sock.destroy
    flash[:success] = "Sock deleted"
      redirect_to socks_path
    end

    private
      def socks_params
        params.require(:sock).permit(:description, :size, :kind, :color, :material)
      end
end
