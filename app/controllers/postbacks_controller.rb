class PostbacksController < ApplicationController
  before_action :remove_some_params

  def index
    @postbacks = Postback.order(created_at: :desc).paginate(page: params[:page])
  end

  def get 
    url = params.delete("url_for_get_postback")
    Postback.create(url: url, method: :get, params: params)
    render nothing: true, status: :ok
  end

  def post 
    url = params.delete("url_for_post_postback")
    Postback.create(url: url, method: :post, params: params)
    render nothing: true, status: :ok
  end

  private

    def remove_some_params
      params.delete('action')
      params.delete('controller')
    end
end
