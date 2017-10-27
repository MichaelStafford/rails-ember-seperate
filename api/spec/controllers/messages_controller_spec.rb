# frozen_string_literal: true

require "rails_helper"


RSpec.describe MessagesController, type: :request do

  context "Get /messages" do
    before { get "/api/v1/messages" }

    it "returns messages" do
      expect(json).not_to be_empty
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end

  end
end
