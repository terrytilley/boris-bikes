require './lib/docking_station.rb'

docking_station = DockingStation.new
bike = Bike.new
docking_station.dock(bike)
