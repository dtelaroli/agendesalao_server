class Client::OwnersController < ClientController
  def show
    @owner = Owner.find(params[:id])
  end
end
