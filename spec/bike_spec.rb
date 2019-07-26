require 'bike'
describe Bike do
  it {is_expected.to respond_to :working?}

  it 'can be reported as a broken' do
    expect(subjec.report_broken).to be_broken
  end
end