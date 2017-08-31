require_relative 'location'

class Trip
  @@stops = []

  def add_location(name)
    location_to_add_to_stops = Location.new(name)
    @@stops << location_to_add_to_stops
  end

  def show_trips
    return @@stops
  end

  def iterate_through_stops

    puts "Began trip."
    @@stops.each_cons(2) do |two_stops_array|

      first_location = two_stops_array[0]
      second_location = two_stops_array[1]

      puts "Travelled from #{first_location.name} to #{second_location.name}"
    end
    puts "Ended trip."
  end

end

trip_to_europe = Trip.new
trip_to_europe.add_location("Europe")
trip_to_europe.add_location("Canada")
trip_to_europe.add_location("USA")
trip_to_europe.add_location("Toronto")
trip_to_europe.add_location("Mars")
trip_to_europe.add_location("Italy")
trip_to_europe.add_location("Bitmaker")

# print array @@stops
trip_to_europe.iterate_through_stops



# Location.new(name)


# puts add_location



  # location = []

  # Location.new, Location.new, Location.new, Location.new
