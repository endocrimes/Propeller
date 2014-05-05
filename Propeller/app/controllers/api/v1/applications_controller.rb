class Api::V1::ApplicationsController < ApiController
  before_filter :require_ssl
  before_filter :require_api_key
  
  respond_to :json

  def index

  end
end
