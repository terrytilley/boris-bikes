require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to :bikes }

#describe '#release_bike' do

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end

  it 'raises an error' do
    expect { subject.release_bike }.to raise_error 'No bike available'
  end

  it 'docks a bike' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    #expect(subject.dock_bike(bike)).to eq bike
    expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
  end

  it 'release working bikes' do
      subject.dock(Bike.new)
      subject.release_bike
      expect(Bike.new).to be_working
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
