class WeightController < ApplicationController
  
 def index
    render :json => Weight.all()
  end

 def create
    @weight = Weight.create!(weight_params)
    render :json => @weight
  end

   def update
    @weight = Weight.find_by!(id: params[:id])
    @weight.update!(weight_params)
    render :json => @weight
  end

  def destroy
    @weight = Weight.find_by!(id: params[:id])
    @weight.destroy!()
    render :json => @weight
  end

   def show
    @weight = Weight.find_by!(id: params[:id])
    render :json => @weight
  end


  private

  def weight_params
    params.require(:weight).permit(:ref, :w_val)
  end
  
end
