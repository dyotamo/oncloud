Rails.application.routes.draw do
  root "front#home"
  get "search", to: "front#search", as: "search"
  get "company/:slug", to: "company#view", as: "company"
end
