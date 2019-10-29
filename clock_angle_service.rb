  
# ClockAngle Challenge
# ---
#
#   Write a service to calculate the angle between the hands of a clock.
#   Maximum degree angle is 180. All degrees should return a number 0
#
# E.g.
# ---
#
#   ClockAngleService.call(6, 0) # => 180 degrees at 6:00
#   ClockAngleService.call(5, 24) # => 18 degrees at 5:24
#   ClockAngleService.call(7, 30) # => 45 degrees at 7:30
#
# To execute file, run this command:
# ---
#
#   ruby ./clock_angle_service.rb

class ClockAngleService
  def self.call(hour, minutes)
    if hour >12 || hour < 0 || minutes > 60 || minutes < 0
      puts "Input numbers within the clock"
    else

      if hour == 12
        hour = 0
      end
      if minutes == 60
        minutes = 0
      end

      hour_angle = 0.5 * (60 * hour + minutes) 
      minute_angle = 6 * minutes
      angle = (hour_angle - minute_angle).abs
      minutes = minutes.to_s.rjust(2,'0')

      if angle >180
        angle = (angle - 360).abs
      end
      if hour == 0
        hour = 12
      end

      puts "#{angle} degrees at #{hour}:#{minutes}"
    end
  end
end

ClockAngleService.call(7,30)
puts 