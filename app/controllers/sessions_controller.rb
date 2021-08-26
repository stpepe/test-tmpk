class SessionsController < ApplicationController
    before_action :require_no_authentication, only: %i[new create]
    before_action :require_authentication, only: :destroy
    def new

    end

    def create
        worker = Worker.find_by email: params[:email]
        if worker&.authenticate(params[:password])
            session[:worker_id] = worker.id
            flash[:success] = "Добро пожаловать!"
            redirect_to root_path
        else
            flash[:warning] = "Введен неправильный email или пароль."
            redirect_to new_session_path
        end
    end

    def destroy
        sign_out
        redirect_to new_session_path
    end
end
