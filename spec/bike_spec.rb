require 'bike'
describe Bike do

  subject(:bike) { described_class.new }
  it 'check initialized bike is working' do
    expect(bike.working?).to eq true
  end

  describe "#broken" do
    it 'tells the bike if broken' do
      bike.broken
      expect(bike.working?).to be false
    end
  end
end
