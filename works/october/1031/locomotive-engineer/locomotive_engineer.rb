class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    debug arguments
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    last_one, last_two, locomotive, *remaining_wagons = each_wagons_id
    additional_wagons = missing_wagons
    reordered_list = [locomotive, *additional_wagons, *remaining_wagons, last_one, last_two]
    reordered_list
  end

  def self.add_missing_stops(route,**keywword_arguments)
    {**route, "stops":keywword_arguments.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route,**more_route_information}
  end
end
