require 'docking_station'

describe DockingStation do

  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike}

    it 'releasing an object of the class Bike' do
      #  expect(subject.release_bike).to be_instance_of Bike
      #  expect(subject.release_bike).to be_working
    end
end
    it 'raises an error when there are no bikes available' do
    expect {subject.release_bike}.to raise_error "No bikes available"
  end
    it "raises an error if maximum capacity has been reached" do
    expect {21.times {subject.dock Bike.new}}.to raise_error "Maximum capacity is reached"
    end


# describe "docking" do
  it {is_expected.to respond_to(:dock).with(1).argument}


 #describe 'seeing the docked bike' do
  it { is_expected.to respond_to :show_bike}

end
