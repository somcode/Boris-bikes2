require 'docking_station'
#require 'bike'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  let(:fake_bike) { double :fake_bike, working?: true }
  let(:fake_broken_bike) { double :fake_broken_bike, working?: false }
  #let(:fake_bike_class) { double :fake_bike_class, new: fake_bike}

  subject(:docking_station) { described_class.new }

  #it { should respond_to(:release_bike)}

  it 'should release a bike' do
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(subject.release_bike).to eq bike
    #expect(bike.working?).to eq true
  end

  #it { should respond_to(:dock_bike) }
  #it { should respond_to(:dock_bike).with(1).arguments }

  it 'checks if dock_bike actually takes a bike' do
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bikes.include?(bike)).to eq true
  end


  it 'release_bike should raise an error when is empty' do
    DockingStation::DEFAULT_CAPACITY.times {docking_station.release_bike}
    expect { docking_station.release_bike }.to raise_error 'there is no bike'
  end

  it 'not to release broken bike' do
    subject.release_bike
    subject.dock_bike(fake_broken_bike)
    expect { subject.release_bike }.to raise_error 'sorry, bike is broken'
  end


  it 'dock_bike should raise an error when is full' do
    expect { subject.dock_bike(fake_bike) }.to raise_error 'there is no space'
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
