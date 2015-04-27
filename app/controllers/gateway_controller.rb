class GatewayController < ApplicationController

	def index
		render :json => Account.all()
	end

	def show
		# TODO: not found error
		render :json => Account.find_by!(card: params[:id])
		rescue ActiveRecord::RecordNotFound
			render json: {
						status: 404,
						error: "notfound"
						}, status: 404
	end

	def transfer

		# Read params
		_from 	 = params[:from]
		_to 	 = params[:to]
		_amount  = params[:amt]

		# Find from db
		from 		= Account.find_by!(card: _from)
		to   		= Account.find_by!(card: _to)
		amount  	= _amount.to_i

		from.amount -= amount
		to.amount 	+= amount

		from.save
		to.save

		render json: {
					status: 200,
					info: "success"
					}, status: 200

	end



end
