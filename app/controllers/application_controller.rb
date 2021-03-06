class ApplicationController < ActionController::Base
  include GraphqlDevise::Concerns::SetUserByToken
        protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

end
