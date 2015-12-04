class Client::OwnersController < ClientController
  def index
    q = "%#{params[:q].to_s.downcase}%"
    @owners = Owner.joins(:profile).where('lower(owners.name) like ? or lower(profiles.name) like ?', q, q)
  end

  def show
    @owner = Owner.find(params[:id])
  end
end
