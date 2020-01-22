require 'dockingstation'

describe DockingStation do
  let (:bike) {subject.release_bike}
  let (:station) {described_class.new}
   
  it {is_expected.to respond_to(:release_bike)}

  it "release working bikes " do
    # bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  # it "docks a bike" do
  #   # bike = subject.dock(bike)
  #   expect(station.dock(bike)).to eq true 
  # end

  it {is_expected.to respond_to(:dock).with(1).argument}
  
end