class ZigbeeController < ApplicationController

  def index
    render :json => Zigbee.all()
  end

 def create
  	@zigbee = Zigbee.create!(zigbee_params)
  	render :json => @zigbee
  end

   def update
  	@zigbee = Zigbee.find_by!(id: params[:id])
  	@zigbee.update!(zigbee_params)
  	render :json => @zigbee
  end

  def destroy
  	@zigbee = Zigbee.find_by!(id: params[:id])
  	@zigbee.destroy!()
  	render :json => @zigbee
  end

   def show
  	@zigbee = Zigbee.find_by!(id: params[:id])
  	render :json => @zigbee
  end


  private

  def zigbee_params
  	params.require(:zigbee).permit(:ref, :d_state, :s_val)
  end

end
