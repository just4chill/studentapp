class WeightController < ApplicationController
  
  def index
  	@resp = Array.new
  	@weights = Weight.all()
  	@weights.each do |weight|
  		node = weight.info.split(",")[0]
  		val = weight.info.split(",")[1]
  		@resp.push(weight.id.to_s,node,val)
  	end
  	render :json => @resp
  end

 def create
  	@weight = Weight.create!(weight_params)
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
  end

   def update
  	@weight = Weight.find_by!(id: params[:id])
  	@weight.update!(weight_params)
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
  end

  def destroy
  	@weight = Weight.find_by!(id: params[:id])
  	@weight.destroy!()
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
  end

   def show
  	@weight = Weight.find_by!(id: params[:id])
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
  end


  private

  def weight_params
  	params.require(:weight).permit(:info)
  end
end
