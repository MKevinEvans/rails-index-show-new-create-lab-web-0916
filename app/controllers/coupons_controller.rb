class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def new
	end

	def edit
		@coupon = Coupon.find(params[:id])
	end

	def create
	   @coupon = Coupon.new
	    @coupon.coupon_code = params[:coupon_code]
	    @coupon.store = params[:store]
	    @coupon.save
	    redirect_to coupon_path(@coupon)
	end

	def	update
		@coupon = Coupon.find(params[:id])
		if @coupon.update(coupon_params)
			redirect_to @coupon
		else
			render 'edit'
		end
	end

	def destroy
	end



end


