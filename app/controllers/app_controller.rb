class AppController < ApplicationController
  
  def index
  	@user = User.last
  end

  def sign_up

  end

  def create_sign_up
    AdminUser.create(email: params[:email], password: params[:password]) if params[:email].present? && params[:password].present?
    render json: {status: 'success'} and return
  end


  def generate_qr
  	qr_value = params[:mobile]
    @user = User.last
    @user.qr_data = qr_value
    @user.save
  	render json: {status: 'success', qr_code: qr_value} and return
  end

  def qrpage
    @user = User.last
    qr_value = @user.qr_data
    qrcode = RQRCode::QRCode.new(qr_value)
    @qr = qrcode.as_svg(
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 11,
      standalone: true,
      use_path: true
      )
  end
end
