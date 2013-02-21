# == Schema Information
#
# Table name: stores
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  user_id          :integer
#  twitterh         :string(255)
#  fbid             :string(255)
#  pinit            :string(255)
#  custcount        :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pic_file_name    :string(255)
#  pic_content_type :string(255)
#  pic_file_size    :integer
#  pic_updated_at   :datetime
#  domain           :string(255)
#  phone_number     :string(255)
#  description      :text
#  country          :string(255)
#  email            :string(255)
#

require 'spec_helper'

describe Store do
  let(:user) { FactoryGirl.create(:user) }
  ## missing stuff
  before do
  	@store = user.stores.build(name: "Sample Store")
  end
  
  subject { @store }
  
  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }
  
  describe "when user id is not present" do
  	before { @store.user_id = nil }
  	it { should_not be_valid }
  end
  
  describe "accessible attributes" do
  	it "should not allow access to user_id" do
  		expect do
  			Store.new(user_id: user.id)
  		end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
  	end
  end
end
