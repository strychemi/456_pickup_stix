module ControllerHelper
  def create_session(user)
    controller.send(:sign_in, user)
  end


  def destroy_session
    controller.send(:sign_out)
  end


  def flash_success
    flash[:success] || flash[:notice]
  end


  def flash_error
    flash[:error] || flash[:alert]
  end


  def set_http_referer
    request.env['HTTP_REFERER'] = root_url
  end
end

