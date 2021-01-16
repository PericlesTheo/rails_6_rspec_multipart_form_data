class SendgridEmailsController < ApplicationController
  def create
    puts "---CONTENT-TYPE---"
    puts request.env["CONTENT_TYPE"]
    puts "------------------"
    render json: params.except(:controller, :action).to_json, status: :ok
  end
end
