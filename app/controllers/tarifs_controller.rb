class TarifsController < ApplicationController

    def show
        @tarifs = Tarif.all
    end


end
