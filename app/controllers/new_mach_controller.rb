class NewMachController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @puts=NewMachGem::MathematicalOperations.operations(params[:x1].to_i,params[:x2].to_i,params[:str])
  end
end
