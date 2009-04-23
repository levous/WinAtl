class HomeController < ApplicationController
  
  def home_page
  end
  
  def seo_info
  end 
  
  def seo_info
  end
  
  def class_info
  end
  
  def training_info
  end
  
  def lead_submit

    @lead = Lead.new(params[:lead])

    if not @lead.save
      flash[:notice] = 'Information failed to save!'
    end
  end
end
