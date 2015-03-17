require 'sinatra'
require 'csv'
# require './helper_functions'

get '/' do
  erb :index
end

post '/' do
  @event   = params[:event]
  @swimmer = params[:swimmer]
  @cyclist = params[:cyclist]
  @runner  = params[:runner]

  if @event == 'men_march' || @event == 'men_april'
    @event_name = "Men's Monthly Triathlon"
  else
    @event_name = "Ladies' Monthly Triathlon"
  end

  if @event == 'men_march' || @event == 'ladies_march'
    @event_date = '15/3/2014'
  else
    @event_date = '15/4/2014'
  end

  @swimmer_first_name   = @swimmer[:name].split.first
  @swimmer_last_name    = @swimmer[:name].split.last
  @swimmer_dob          = @swimmer[:dob]

  @cyclist_first_name   = @cyclist[:name].split.first
  @cyclist_last_name    = @cyclist[:name].split.last
  @cyclist_dob          = @cyclist[:dob]

  @runner_first_name    = @runner[:name].split.first
  @runner_last_name     = @runner[:name].split.last
  @runner_dob           = @runner[:dob]

  erb :tickets
end

# post '/' do
#   @event   = params[:event]
#   @swimmer = params[:swimmer]
#   @cyclist = params[:cyclist]
#   @runner  = params[:runner]

#   @event_name = event_name(@event)
#   @event_date = event_date(@event)

#   @swimmer_first_name   = first_name(@swimmer[:name])
#   @swimmer_last_name    = last_name(@swimmer[:name])
#   @swimmer_dob          = @swimmer[:dob]

#   @cyclist_first_name   = first_name(@cyclist[:name])
#   @cyclist_last_name    = last_name(@cyclist[:name])
#   @cyclist_dob          = @cyclist[:dob]

#   @runner_first_name    = first_name(@runner[:name])
#   @runner_last_name     = last_name(@runner[:name])
#   @runner_dob           = @runner[:dob]

#   erb :tickets
# end


