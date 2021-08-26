module Authentication
    extend ActiveSupport::Concern

    included do
        private

        def sign_in(worker)
            session[:worker_id] = worker.id
        end

        def sign_out
            session.delete :worker_id
            @current_worker = nil
        end
        
        def current_worker
            current_worker ||= Worker.find_by(id: session[:worker_id]) if session[:worker_id].present? 
    
        end
    
        def worker_signed_in?
            current_worker.present?
        end

        def require_no_authentication
            return if !worker_signed_in?
            redirect_to root_path
            flash[:warning] = "Вы уже авторизированы!"
        end

        def require_authentication
            return if worker_signed_in?
      
            flash[:warning] = "Вы не вошли!"
            redirect_to new_session_path
        end
    
        helper_method :current_worker, :worker_signed_in?
    end
end