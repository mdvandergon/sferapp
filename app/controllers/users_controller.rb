class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def pdf
    pdf_filename = File.join(Rails.root, "public/pdfs/my_document.pdf")
    send_file(pdf_filename, :filename => "your_document.pdf", :disposition => 'inline', :type => "application/pdf")
  end

end
