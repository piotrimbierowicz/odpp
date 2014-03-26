#encoding: utf-8
class HomeController < ApplicationController

  before_filter do
    @main_events = Event.where(:is_additional_event => false).order('events.order asc')
    @additional_events = Event.where(:is_additional_event => true).order('events.order asc')
  end

  def index
    @participant = Participant.new
  end

  def sign_up
    @participant = Participant.new(params[:participant])

    if @participant.event.participants.where(:email => @participant.email).size > 0
      flash[:notice] = 'Jesteś już zapisany/a na to wydarzenie.'
      redirect_to action: 'index'
      return
    end

    if @participant.save
      flash[:notice] = 'Dziękujemy za zgłoszenie.'
      redirect_to action: 'index'
    else
      flash[:notice] = 'Przepraszamy, wystąpił błąd.'
      render :index
    end
  end

end