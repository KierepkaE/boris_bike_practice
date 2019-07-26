require 'docking_station'
require 'bike'

describe DockingStation do
  describe '#release_bike' do
    it 'raises an error when there is no avaible bikes' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it {is_expected.to respond_to(:bike)}

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
