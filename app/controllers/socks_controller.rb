class SocksController < ApplicationController

    def index
        @socks = Sock.all
      end

    def new
    end

    def create
        @sock = Sock.new(sock_params)
       
        @sock.save
        redirect_to @sock
      end

    def edit
    end

    def show
        @sock = Sock.find(params[:id])
    end

    def update
    end

   
    def delete
    end

   
    private
    def socks_params
      params.require(:sock).permit(:description, :size, :kind, :color, :material)
    end

end
