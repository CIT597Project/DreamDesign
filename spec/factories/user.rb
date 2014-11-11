FactoryGirl.define do
  factory :user do |f|
    f.name 'Test User'
    f.email 'example@example.com'
    f.password 'changeme'
    f.password_confirmation 'changeme'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
