class Postback < ActiveRecord::Base
  extend Enumerize

  store_accessor :params

  enumerize :method, in: [:post, :get]

  self.per_page = 30
end
