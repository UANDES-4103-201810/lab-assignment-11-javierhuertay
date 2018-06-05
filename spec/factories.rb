FactoryBot.define do
	factory :user do
	username "javito"
	email "javito@123.cl"
	password "12345678"
	end
	factory :message do
	user_id 1
	date "09/09/1999"
	content "accion"
	end
end
