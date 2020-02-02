class CouponsController < ApplicationController

    def index
        @coupon = Coupon.all
    end

    def show
        @coupon = Coupon.find_by(id_params)
    end

    def new
    end

    def create
        @coupon = Coupon.create(coupons_params)
        redirect_to coupon_path(@coupon)
    end

    private
    
    def coupons_params
        params.require(:coupon).permit(:store, :coupon_code)
    end

    def id_params
        params.permit(:id)
    end

end
