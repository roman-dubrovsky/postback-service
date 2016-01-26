Rails.application.routes.draw do
  root 'postbacks#index'

  get '*url_for_get_postback', to: 'postbacks#get'
  post '*url_for_post_postback', to: 'postbacks#post'
end
