require 'dockingstation'

describe DockingStation do
  let (:station) {DockingStation.new}
  # let (:bike) {Bike.new}
  it {is_expected.to respond_to(:release_bike)}

  it "release working bikes " do
    bike = subject.release_bike
    expect(bike.working?).to eq true
end
end
