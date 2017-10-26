# frozen_string_literal: true

class MessagesController < ApplicationController
  def index
    json_response(message: "Hello World")
  end
end
