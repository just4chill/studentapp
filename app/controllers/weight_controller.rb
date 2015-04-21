class WeightController < ApplicationController
  
  def index
<<<<<<< HEAD
    render :json => Weight.all()
=======
  	@resp = Array.new
  	@weights = Weight.all()
  	@weights.each do |weight|
  		node = weight.info.split(",")[0]
  		val = weight.info.split(",")[1]
  		@resp.push(weight.id.to_s,node,val)
  	end
  	render :json => @resp
>>>>>>> 5038d84f6c6f0897bb8bdc384bf483dbff68db4d
  end

 def create
  	@weight = Weight.create!(weight_params)
<<<<<<< HEAD
  	render :json => @weight
=======
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
>>>>>>> 5038d84f6c6f0897bb8bdc384bf483dbff68db4d
  end

   def update
  	@weight = Weight.find_by!(id: params[:id])
  	@weight.update!(weight_params)
<<<<<<< HEAD
  	render :json => @weight
=======
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
>>>>>>> 5038d84f6c6f0897bb8bdc384bf483dbff68db4d
  end

  def destroy
  	@weight = Weight.find_by!(id: params[:id])
  	@weight.destroy!()
<<<<<<< HEAD
  	render :json => @weight
=======
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
>>>>>>> 5038d84f6c6f0897bb8bdc384bf483dbff68db4d
  end

   def show
  	@weight = Weight.find_by!(id: params[:id])
<<<<<<< HEAD
  	render :json => @weight
=======
  	@resp = [@weight.id.to_s, @weight.info.split(",")[0],@weight.info.split(",")[1]]
  	render :json => @resp
>>>>>>> 5038d84f6c6f0897bb8bdc384bf483dbff68db4d
  end


  private

  def weight_params
  	params.require(:weight).permit(:ref, :w_val)
  end
  
end
