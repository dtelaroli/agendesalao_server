class Owner::EventsController < OwnerController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = current_owner.events
  end

  def show
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.json { render :show, status: :created, location: [:owner, @event] }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.json { render :show, status: :ok, location: [:owner, @event] }
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
      @event = current_owner.events.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:owner_id, :client_id, :name, :client, :invite, :start, :estimated_time)
        .tap{|e| e[:owner] = current_owner }
    end
end
