class Client::EventsController < ClientController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = current_client.events.where('start > ?', Time.now)
  end

  def history
    @events = current_client.events.where('start < ?', Time.now)
  end
  
  def owner
    @events = Event.where(owner_id: params[:id])
  end

  def show
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.json { render :show, status: :created, location: [:client, @event] }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.json { render :show, status: :ok, location: [:client, @event] }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.json { render json: @event, status: :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = current_client.events.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:owner_id, :client_id, :name, :email_or_mob, :invite, :start, :estimated_time, :confirmed)
        .tap{|e| 
          e[:client] = current_client 
          e[:email_or_mob] = current_profile.mobile || current_client.email
          e[:name] = current_profile.name || current_client.name
        }
    end

    def current_profile
      current_client.profile || Profile.new
    end
end
