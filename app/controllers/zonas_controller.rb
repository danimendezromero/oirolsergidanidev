class ZonasController < ApplicationController
  def index
      @zonas = Zona.all
    end

    def show
      @zona = Zona.find(params[:id])
    end

    def new
      @zona = Zona.new
    end

    def create
      @zonas = Zona.all
      @zona = Zona.create(zona_params)
    end

    def edit
      @zona = Zona.find(params[:id])
    end

    def update
      @zonas = Zona.all
      @zona = Zona.find(params[:id])

      @zona.update_attributes(zona_params)
    end

    def delete
      @zona = Zona.find(params[:zona_id])
    end

    def destroy
      @zonas = Zona.all
      @zona = Zona.find(params[:id])
      @zona.destroy
    end

  private
    def zona_params
      params.require(:zona).permit(:nom, :clima,:temperatura, :humitat )
    end
end
