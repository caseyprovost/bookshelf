# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :v1 do
    resources :books
  end
end
