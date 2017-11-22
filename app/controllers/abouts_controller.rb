class AboutsController < ApplicationController
  
  def index
    @About = About.all
  end
  
  
  
end
