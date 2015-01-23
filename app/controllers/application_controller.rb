class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    require 'socket'
    ip = `/sbin/ifconfig eth0 | grep 'net addr' | awk '{print $2}' | sed -e s/.*://`.strip

    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    render text: "HelloWorld      \n IP is "+ip+" \n\n\n #BUILD_INFO#"
  
  end
end
