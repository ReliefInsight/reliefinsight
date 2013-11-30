class Product < ActiveRecord::Base
  def self.request_list
    all
  end
end
