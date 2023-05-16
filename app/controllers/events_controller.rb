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
    Event.create(title: params[:title],start_date: params[:started_at],duration: params[:duration],description: params[:description],price: params[:price],location: params[:location])
    redirect_to root_path, notice: "L'event a été créé avec succès."
  end
end
