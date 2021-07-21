class ContractsController < ApplicationController
    before_action :set_contract, only: %i[show]
    
    def index
    end

    def create
        @contract = Contract.new(params.require(:contract).permit(:username, :usurname, :face, :status, :tarif_id))
        if @contract.save 
            redirect_to('/')
        else 
            redirect_to('/contracts/new')
        end
    end

    def new
        @contract = Contract.new
    end

    def show
    end

    private

    def contract_params
        params.require(:contract).permit(:username, :usurname, :face, :tarif_id) 
    end

    def set_contract
        @contract = Contract.find(params[:id])
    end


end
