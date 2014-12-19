class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    require 'socket'
    ip = `/sbin/ifconfig eth0 | grep 'net addr' | awk '{print $2}' | sed -e s/.*://`.strip
  
    render text: "Welcome to HOL 1430.  \n IP is "+ip
  
  end
end
