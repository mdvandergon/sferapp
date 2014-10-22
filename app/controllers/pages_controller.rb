# class PagesController < ApplicationController
#   def home
#   end
#
#   def about
#   end
#
# end

class PagesController < HighVoltage::PagesController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render  :pdf => :id
      end
    end
  end
end
