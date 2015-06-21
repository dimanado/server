class NewMachController < ApplicationController
  def index
    #data=5
    #respond_to do |format|
      #format.json { render json: data}
    #end
    @puts=NewMachGem::MathematicalOperations.operations(2,3,'*')
  end
end
