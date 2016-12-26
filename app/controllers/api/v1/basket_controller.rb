class Api::V1::BasketController < ApplicationController
    include BasketService
    
    def return_matches
        @Matches = get_matches
        respond_to do |format|
         #  format.json { render(html: "202 response OK")}
           format.json{ render(json: @Matches) }
        end
    end
    
    def new_basket_match
         response = new_basket_match_mock
         
         respond_to do |format|
             format.json{ render(json: response) }
         end
    end
end
