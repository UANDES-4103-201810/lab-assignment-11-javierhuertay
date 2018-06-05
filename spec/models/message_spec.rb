require "rails_helper"
RSpec.describe Message, type: :model do
	it "Valid atributes" do
		@user = create(:user)
		@message = create(:message, user_id: @user.id)
		expect(@message).to be_valid
	end
	it "Not valid without user_id" do
		@message = build(:message, user_id: nil)
		expect(@message).to_not be_valid
	end
	it "Not valid without user_id" do
		@message = build(:message, user_id: false)
		expect(@message).to_not be_valid
	end

end
