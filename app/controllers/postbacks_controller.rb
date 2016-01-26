class PostbacksController < ApplicationController
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
end
