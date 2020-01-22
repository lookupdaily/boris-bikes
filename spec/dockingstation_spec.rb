require 'dockingstation'

describe DockingStation do 
  let (:station) {Docking.new}
  let (:bike) {Bike.new}
  it {is_expected.to respond_to(:release_bike)}

  it "#release_bike" do
    expect(station.release_bike).to eq(bike)
  end
end

# describe release_bike do
#   it {is_expected.to respond_to(:bike)}
# end
