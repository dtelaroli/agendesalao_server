class Client::OwnersController < ClientController
  def index
    @owners = Owner.joins(:profile).where('lower(owners.name) like :q or lower(profiles.name) like :q', {q: "%#{params[:q].to_s.downcase}%"})
  end

  def show
    @owner = Owner.find(params[:id])
  end
end
