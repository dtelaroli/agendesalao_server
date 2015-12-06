class Owner::ProfilesController < OwnerController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.joins(:client).where('lower(profiles.name) like ?', "%#{params[:q].to_s.downcase}%")
  end

  def show
  end

  def create
    if Profile.exists?(current_owner.profile_id)
      update
    else
      @profile = Profile.new(profile_params)
      respond_to do |format|
        ActiveRecord::Base.transaction do
          if @profile.save
            current_owner.update(owner_params.tap {|p| p[:profile_id] = @profile.id})
            format.json { render :show, status: status, location: [:owner, @profile] }
          else
            format.json { render json: @profile.errors, status: :unprocessable_entity }
          end
        end
      end
    end
  end

  def update
    respond_to do |format|
      ActiveRecord::Base.transaction do
        if @profile.update(profile_params)
          current_owner.update(owner_params)
          format.json { render :show, status: :ok, location: [:owner, @profile] }
        else
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = current_owner.profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:id, :name, :description, :cpf, :services, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state, :profile)
    end

    def owner_params
      params.require(:owner).permit(:mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end, :time_per_client)
    end
end
