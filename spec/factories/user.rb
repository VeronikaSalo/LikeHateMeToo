FactoryGirl.define do
  factory :user do
    provider "facebook"
    sequence(:uid, 100000)
    sequence(:name) { |n| "Test User #{n}" }
    first_name "Test first name"
    last_name "Test last name"
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:oauth_token, 10000)
    oauth_expires_at Time.now + 1.week
  end
end