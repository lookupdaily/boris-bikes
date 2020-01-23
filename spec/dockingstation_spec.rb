require 'dockingstation'

describe DockingStation do
  let (:bike) {subject.release_bike}
  let (:station) {described_class.new}
   
  it {is_expected.to respond_to(:release_bike)}

  it "release working bikes " do
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
  
  it "docks a bike" do
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end



end