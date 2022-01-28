require 'locales_service'

class LocalesController < ApplicationController
  def index
    puts "START get_locales at #{Time.now}"
    @result = LocalesService.new(params[:product], params[:version], params[:displayLanguage], params[:cacheExpired]).get_locales
    puts "END get_locales at #{Time.now}"
  end
end
