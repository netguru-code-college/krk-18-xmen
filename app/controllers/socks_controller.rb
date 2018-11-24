class SocksController < ApplicationController

    def index
        @socks = Sock.all
      end

    def new
        @sock = Sock.new
    end

    def create
        @sock = Sock.new(socks_params)
       
        @sock.save
        redirect_to @sock
      end

    def edit
        @sock = Sock.find(params[:id])
        if @sock.save
            redirect_to @sock
          else
            render 'new'
          end
    end

    def show
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

   
    def delete
    end

   
    private
    def socks_params
      params.require(:sock).permit(:description, :size, :kind, :color, :material)
    end

end
