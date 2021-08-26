class AdressesController < ApplicationController
    before_action :require_authentication
    def new
        @adress = Adress.new
    end

    def create
        @adress = Adress.new(params.require(:adress).permit(:city, :street, :house, :home))
        @adress.contract_id = params[:contract_id]
        if @adress.save  
            render :endreg
        else 
            render :new
        end
    end
end
