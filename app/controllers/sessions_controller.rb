class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(ressource, _opts = {})
    render json: resource
  end

  def respond_to_destroy
    head :no_content
  end
end
