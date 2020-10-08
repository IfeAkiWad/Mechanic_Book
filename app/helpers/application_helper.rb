module ApplicationHelper

    def render_navigation
        if session[:mechanic_id]
            link_to "Logout", '/logout', method: 'delete'
        else
            link_to("Login", '/login') + " " + link_to("SignUp", '/signup') + " " + link_to("Home", mechanics_path)
        end 
    end
end
