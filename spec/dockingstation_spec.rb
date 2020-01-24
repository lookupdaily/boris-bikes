require 'dockingstation'

describe DockingStation do
  let (:bike) {Bike.new}

  it {is_expected.to respond_to(:release_bike)}
  describe "#new" do
    it "accepts an argument for maximum capacity" do
      station = DockingStation.new(30)
      expect(station.capacity).to eq(30)
    end
    it "has a capacity of 20 when no arguments given" do
      expect(subject.capacity).to eq(20)
    end
  end

  describe '#release_bike' do
    it 'releases bikes if we have any' do

      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it 'raises an error if bike is broken' do
      subject.dock(bike, "broken")
      expect { subject.release_bike }.to raise_error "Won't release broken bike"
    end
  end

  describe '#dock(bike)' do
    it "returns docked bikes" do
      bikes = []
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it 'raises an error' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
      expect { subject.dock(bike) }.to raise_error "No space available"
    end

    it "reports a bike as broken" do
      subject.dock(bike, "broken")
      expect(bike.status).to eq "broken"
    end

    it "docks a broken bike" do
      subject.dock(bike, "broken")
      expect(subject.bikes).to eq [bike]
    end
  end

  it "release working bikes " do
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "docks a bike" do
    expect(subject.dock(bike)).to eq bike
  end

  
end
