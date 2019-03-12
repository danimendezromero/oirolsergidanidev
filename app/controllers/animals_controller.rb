class AnimalsController < ApplicationController
  def index
   @animals = Animal.all
 end

 def show
   @animal = Animal.find(params[:id])
 end

 def new
   @animal = Animal.new
 end

 def create
   @animals = Animal.all
   @animal = Animal.create(animal_params)
 end

 def edit
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
   params.require(:animal).permit(:nom, :raza, :zona, :any_naixement, :user)
 end
end
