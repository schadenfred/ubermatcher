# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
		sequence(:email)      {|n| "user#{n}@test.com" }
    password              "123qweasd"
    password_confirmation "123qweasd"  
    confirmed_at Time.now
	end
end
