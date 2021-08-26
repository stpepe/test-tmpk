class TarifsController < ApplicationController
    before_action :require_authentication

    def show
        @tarifs = Tarif.all
    end


end
