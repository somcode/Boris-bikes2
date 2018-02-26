require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  subject(:docking_station) { described_class.new }

  it { should respond_to(:release_bike)}

  it 'should release a bike' do
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end

  #it { should respond_to(:dock_bike) }
  #it { should respond_to(:dock_bike).with(1).arguments }

  it 'checks if dock_bike actually takes a bike' do

    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bikes.include?(bike)).to eq true

  end


  it 'release_bike should raise an error when is empty' do
    20.times {docking_station.release_bike}
    expect { docking_station.release_bike }.to raise_error 'there is no bike'
  end

  it 'dock_bike should raise an error when is full' do
    fake_bike = double(
      :working? => true
    )

    #19.times {subject.dock_bike(Bike.new)}
    #p "BIKES: #{subject.bikes}"


    expect { subject.dock_bike(bike) }.to raise_error 'there is no space'
  end
end
