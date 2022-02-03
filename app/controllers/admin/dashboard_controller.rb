class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV['MAX_SECURITY_USERNAME'], :password => ENV["MAX_SECURITY_PASSWORD"]
  
  def show
    @products_count = Product.count
    @categories_count = Category.count
  end
end
