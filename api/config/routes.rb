# frozen_string_literal: true

Rails.application.routes.draw do
  mount_ember_app :ui, to: "/"
end
