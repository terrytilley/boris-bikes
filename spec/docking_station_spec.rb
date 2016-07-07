require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to :bikes }

#describe '#release_bike' do

  it 'raises an error' do
    expect { subject.release_bike }.to raise_error 'No bike available'
  end

  it 'docks a bike' do
    bike = Bike.new
    @capacity.times { subject.dock(bike) }
    #expect(subject.dock_bike(bike)).to eq bike
    expect { subject.dock(bike) }.to raise_error 'Docking station full'
  end

  it 'release working bikes' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
  end


end
