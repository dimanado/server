class NewMachController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  	if (params[:str]=='sin' || params[:str]=='cos')
  	  @puts=NewMath::MathPackage.sin_and_cos(params[:x1].to_i, params[:str])
  	else
  	  @puts=NewMath::MathPackage.operations(params[:x1].to_i,params[:x2].to_i,params[:str])
  	end
    render json: @puts, status: :ok
  end
end
