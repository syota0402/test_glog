class WebController < ApplicationController
  def index
    set_age
  end
  
  private
  def set_age
    birthday = Date.new(1995, 4, 2)
    today = Date.today
    
    age = today.year - birthday.year
    if today.month < birthday.month or (today.month == birthday.month and today.day < birthday.day)
      age -= 1 # まだ誕生日を迎えていない
    end
    @age=age
  end
end
