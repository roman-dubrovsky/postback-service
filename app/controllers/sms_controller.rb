class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @sms = Sms.order(created_at: :desc).paginate(page: params[:page])
  end

  def create
    Sms.create(sms_params)
    render nothing: true, status: :ok
  end

  private

    def sms_params
      params.require(:sms).permit(:message, :sender, :recipient)
    end
end
