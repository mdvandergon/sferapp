class PdfsController < ApplicationController

  def serve
    path = File.join(Rails.root, 'app', 'pages', params[:filename])

    send_file( path,
    :disposition => 'inline',
    :type => 'application/pdf',
    :x_sendfile => true )
  end

end
