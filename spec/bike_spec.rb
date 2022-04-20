require './lib/bike'
describe Bike do
    describe "working?" do
        context "if working?" do
        it "returns true" do
        instance = Bike.new
        expect(instance.working?).to eq(true)
        end
        end
    end
end

