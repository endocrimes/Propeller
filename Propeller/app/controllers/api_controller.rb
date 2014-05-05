class ApiController < ActionController::Base
  # protect_from_forgery with: :null_session

  private

  def require_ssl
    if Rails.env.production? 
      force_ssl
    end
  end

  def require_api_key
    api_key = ApiKey.find_by_access_token(params[:access_token])
    @message = "Unauthorized"
    render :error, :status => :unauthorized unless api_key
  end

  def render_bad_request
    render :error, :status => 400
  end
end
