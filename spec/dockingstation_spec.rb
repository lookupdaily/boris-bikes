require 'dockingstation'

describe DockingStation do
  let (:bike) {Bike.new}

  it {is_expected.to respond_to(:release_bike)}
  describe '#release_bike' do
    it 'releases bikes if we have any' do

      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock(bike)' do
    it "returns docked bikes" do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
    
    it 'raises an error' do
      subject.dock(bike)
      expect { subject.dock(bike) }.to raise_error "No space available"
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
