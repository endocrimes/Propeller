class Api::V1::DevicesController < ApiController
  before_filter :require_ssl
  before_filter :require_api_key

  respond_to :json

  def index
    @devices = Device.all
  end

  def create
    if params[:token]
      device = Device.new
      device.token = params[:token]
      device.save
      @device = device
    else
      @message = "Missing paramaters"
      render_bad_request
    end
  end

end