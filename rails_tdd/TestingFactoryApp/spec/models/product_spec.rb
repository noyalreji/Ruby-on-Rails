it "should be a valid product" do 
    expect(build(:product, user: build(:user))).to be_valid
end