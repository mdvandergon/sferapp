class PdfsController < ApplicationController
  before_filter :authenticate_user!

  def serve
    path = File.join(Rails.root, 'app', 'views', 'pages', params[:filename])

    send_file( path,
    :disposition => 'inline',
    :type => 'application/pdf',
    :x_sendfile => true )
    Tracker.track(current_user.email, "Viewed PDF #{params[:filename]}")
  end

end
