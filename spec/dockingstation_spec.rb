require 'dockingstation'

describe DockingStation do 
  it {is_expected.to respond_to(:release_bike)}
    # station = DockingStation.new
    # expect(station).to respond_to(:release_bike)
end