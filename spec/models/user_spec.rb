require "rails_helper"
RSpec.describe User, type: :model do
	it "valid atributes" do
		@user = create(:user)
		expect(@user).to be_valid
	end
	it "not valid same username" do
		@user = create(:user, username: "javto")
		@user2 = build(:user)
		expect(@user2).to_not be_valid
	end
	it "not valid with same email" do
		@user = create(:user, email: "javto@123.cl")
		@user2 = build(:user)
		expect(@user2).to_not be_valid
	end
	it "not valid with 20 or more characters" do
		@user2 = build(:user, username: "qwertyujbvjhgvgcvhgvukgbiopñlkjhgfdsa")
		expect(@user2).to_not be_valid
	end
	
end
