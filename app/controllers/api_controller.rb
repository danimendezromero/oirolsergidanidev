class ApiController < ApplicationController

  # GET /todos
  def zonas
    @zonas = Zona.all
    json_response(@zonas)
  end

  # GET /todos
  def animals
    @animals = Animal.all
    json_response(@animals)
  end

end
