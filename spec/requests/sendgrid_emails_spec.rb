require "rails_helper"

RSpec.describe SendgridEmailsController, type: :request do
  describe "#POST /sendgrid_emails" do
    it "returns the params as json" do
      incoming_email_body = File.read(Rails.root.join("spec/fixtures/default_data.txt"))

      post "/sendgrid_emails", params: incoming_email_body, headers: {"Content-Type" => "multipart/form-data; boundary=xYzZY"}

      expect(response).to have_http_status(200)
      expect(response.body).to eq("let's see")
    end
  end
end
