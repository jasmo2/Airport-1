class FlightController < ApplicationController
  def index
  	@flights = Flight.all
  	render "index"
  end


  private
  def parameters
  	paras.require[:flight].permit[:id]
  end
end
