require_relative 'vendor'

RSpec.describe "Buy a Soda" do
    context "Have money" do
        it "buy the soda" do
            buyer = Buyer.new
            buyer.money = 10
            expect(buyer.buy_soda).to eq(true)
        end
    end
    context 'have no money' do
        it "doesn't buy the soda" do 
            buyer = Buyer.new
            buyer.money = 0
            expect(buyer.buy_soda).to eq(false)
        end
    end
end