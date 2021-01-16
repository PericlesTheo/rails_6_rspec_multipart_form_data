class SendgridEmailsController < ApplicationController
  def create
    puts "---CONTENT-TYPE---"
    puts request.env["CONTENT_TYPE"]
    puts "------------------"
    render json: params.except(:controller, :action), status: :ok
  end
end
