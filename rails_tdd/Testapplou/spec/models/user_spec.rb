require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not save if name fieldrspec  is blank' do
    user = User.new(
      namer:'',
      email:'bob@bob.com'
    )
    expect(user).to be_invalid
  end

  it 'should save with valid entries' do
    user = User.new(
      namer:'bob',
      email:'bob@bob.com'
    )
    expect(user).to be_valid
  end
end
