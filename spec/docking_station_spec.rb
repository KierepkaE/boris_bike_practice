require 'docking_station'
require 'bike'

describe DockingStation do
  describe '#release_bike' do
    it 'raises an error when there is no avaible bikes' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
      expect {subject.dock(Bike.new).to raise_error 'Docking station is full'}
    end
  end

  it 'has default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it {is_expected.to respond_to(:bikes)}

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end
