class WorkersController < ApplicationController
    before_action :require_no_authentication
    def index

    end
    
    def new
        @worker = Worker.new
    end
    
    def create
        @worker = Worker.new worker_params
        if @worker.save
            session[:worker_id] = @worker.id
            flash[:success] = "Вы успешно зарегистрированы!"
            redirect_to root_path
        else
            render :new
        end
    end
    
    def show
    
    end
    
    private
    
    def worker_params
        params.require(:worker).permit(:email, :name, :password, :password_confirmation)
    end
end
