# frozen_string_literal: true

require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do

    expect(subject.release_bike).to be_working
  end
end
