module ApplicationHelper
    # Confirms a logged-in user.
    def logged_in?
        !current_user.nil?
    end
    
    def authenticate_user
        unless logged_in?
            redirect_to root_path, notice: "Brak dostępu. Zaloguj się."
        end
    end
end
