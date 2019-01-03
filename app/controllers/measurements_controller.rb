class MeasurementsController < ApplicationController

  before_action :get_db_from_session
  after_action  :store_db_in_session
  
  private
  
  def get_db_from_session

    @db = Database.new()

    if !session[:db].blank?
      @db = YAML.load(session[:db])
    end
  end

  def store_db_in_session

    session[:db] = @db.to_yaml
  end

  public
  
  def new
  end

  def my_measurements
    puts("Displaying my measurements page")
  end
  
  def enter_my_measurements
    puts("Displaying enter my measurements page")
  end
  
  def process_enter_new_measurements
    weight = params[:weight]
    body_fat = params[:body_fat]
    height = params[:height]
    @db.process_enter_new_measurements(weight, body_fat, height)
    
    redirect_to my_measurements_path
  end 
end
