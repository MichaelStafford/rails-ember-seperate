# frozen_string_literal: true

Rails.application.routes.draw do
  resources :messages

  # Must come last
  mount_ember_app :ui, to: "/"
end
