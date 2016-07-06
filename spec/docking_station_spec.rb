require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock_bike }
  it { is_expected.to respond_to :bike }

  it 'release working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
end
