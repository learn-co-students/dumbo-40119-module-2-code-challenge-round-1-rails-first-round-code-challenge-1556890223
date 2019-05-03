class VendorsweetsController < ApplicationController
    def index
        @vendorsweets = Vendorsweet.all
    end

    def new
        @vendorsweet = Vendorsweet.new
    end

    def create
        @vendorsweet = Vendorsweet.create
    end


end
