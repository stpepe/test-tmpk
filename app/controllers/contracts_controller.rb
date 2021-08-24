class ContractsController < ApplicationController
    before_action :set_contract, only: %i[show]
    
    def index
    end

    def edit
    end

    def update

    end

    def create
        @contract = Contract.new(params.require(:contract).permit(:username, :usurname, :face, :status, :tarif_id))
        @contract.status = "Активен"
        if @contract.save 
            aid = Contract.last[:id].to_s 
            redirect_to("/adresses/#{aid}/new")
        else 
            render :new
        end
    end

    def new
        @contract = Contract.new
    end

    def show
    end

    private

    def set_contract
        @contract = Contract.find(params[:id])
    end


end
