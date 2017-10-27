# frozen_string_literal: true

Rails.application.routes.draw do
  scope "/api" do
    scope "v1" do
      resources :messages
    end
  end

  # Must come last
  mount_ember_app :ui, to: "/"
end
