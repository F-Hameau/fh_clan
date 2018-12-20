class RequestsController < ApplicationController
  def new
    @subsidy = Subsidy.find(params[:id])
    @request = Request.new
  end

  def create
    @subsidy = Subsidy.find(params[:id])
    @request = Request.new(request_params)
    @request.subsidy = @subsidy
    if @request.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def request_params
    params.require(:request).permit(:amount, :email, :receipt)
  end
end
