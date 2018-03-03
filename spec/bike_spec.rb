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

    it 'report bike if is broken' do
      subject.report_broken
      expect(subject.working).to eq false
    end
  end

end
