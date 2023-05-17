class EventsController < ApplicationController
  def index
    @events = Event.all.reverse
  end

  def new
  end

  def show
  end

  def create
    puts params
    puts "$ #{current_user.id} $"
    event = Event.new(title: params[:title],start_date: params[:started_at],duration: params[:duration],description: params[:description],price: params[:price],location: params[:location])
    event.user_id = current_user.id
    if event.save
    redirect_to root_path, notice: "L'event a été créé avec succès."
    else
      flash[:error] = event.errors.full_messages.join(', ')
      redirect_to new_event_path
    end
  end
end
