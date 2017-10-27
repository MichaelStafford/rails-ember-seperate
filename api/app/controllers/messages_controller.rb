# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  def index
    @messages = Message.all
    json_response(@messages)
  end

  private
  def messages_params
    params.permit(:id, :text)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
