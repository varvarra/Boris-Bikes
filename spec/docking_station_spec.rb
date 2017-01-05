require 'docking_station'

describe DockingStation do
  describe 'releasing' do
  it { is_expected.to respond_to :release_bike}
end

 describe "docking" do
  it {is_expected.to respond_to(:dock).with(1).argument}
end

 describe 'seeing the docked bike' do
  it { is_expected.to respond_to :bike}
 end
end
