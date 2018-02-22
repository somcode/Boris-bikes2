require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  it { should respond_to(:release_bike)}

  it 'should release a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { should respond_to(:dock_bike) }
  it { should respond_to(:dock_bike).with(1).arguments }

  it 'checks if dock_bike actually takes a bike' do
    #ds = DockingStation.new
    bike = subject.release_bike
    expect(subject.dock_bike(bike)).to be_an_instance_of(Bike)
  end


  it 'release_bike should raise an error' do
    expect { subject.release_bike }.to raise_error # 'there is no bike'
  end
end
