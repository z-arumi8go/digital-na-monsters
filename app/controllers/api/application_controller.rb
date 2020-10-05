class Api::ApplicationController < ActionController::Base
    
    def authentication
       if !token || !current_user
        error "Authentication ERROR"
       end
    end

    
    def ok(data = nil, message = nil)
        render json: { status: 'SUCCESS', message: message, data: data }
    end

    def error(message = nil)
        render json: { status: 'ERROR', message: message }
    end


    def token
        @token ||= request.headers[:TOKEN]
    end

    def current_user
        @current_user ||= Auth.find_by(token: token).user
    end
end
