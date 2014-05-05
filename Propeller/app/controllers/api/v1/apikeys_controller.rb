class Api::V1::ApikeysController < ApiController
  before_filter :require_ssl
  
  # TODO: Lock down ApiKey generation endpoint
  def new
    @ApiKey = ApiKey.create
  end
end
