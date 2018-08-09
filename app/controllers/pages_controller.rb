class PagesController < ApplicationController

  def index
    @appointments = Appointment.all 
  end

end
