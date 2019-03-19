class AnimalsController < ApplicationController
  def index
    @buscar = params[:buscar]
    if @buscar==""
      @animals = Animal.all
    elsif @buscar
      @animals = Animal.where("nom LIKE ?", "%#{@buscar}%")
    else
      @animals = Animal.all
    end#if end
 end

 def show
   @animal = Animal.find(params[:id])
 end

 def new
   @zonas = Zona.all
   @users = User.all
   @animal = Animal.new
 end

 def create
   @animals = Animal.all
   @animal = Animal.create(animal_params)
 end

 def edit
   @zonas = Zona.all
   @users = User.all
   @animal = Animal.find(params[:id])
 end

 def update
   @animals = Animal.all
   @animal = Animal.find(params[:id])

   @animal.update_attributes(animal_params)
 end

 def delete
   @animal = Animal.find(params[:animal_id])
 end

 def destroy
   @animals = Animal.all
   @animal = Animal.find(params[:id])
   @animal.destroy
 end

private
 def animal_params
   params.require(:animal).permit(:nom, :raza, :zona_id, :any_naixement, :user_id)
 end
end
