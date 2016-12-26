Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #rutas activas para desarrollo
   get "/" => "api/v1/basket#return_matches", defaults: { format: "json" }
   get "/crear_mock_match" => "api/v1/basket#new_basket_match", defaults: { format: "json" }
    # namespace :api  do
    #         namespace :v1 do
    #             get "/" => "sports#get_matches"
    #         end
    # end
end
