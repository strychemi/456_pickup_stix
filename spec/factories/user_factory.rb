FactoryGirl.define do
  factory :user do
    first_name { ModelHelper.first_name }
    last_name { ModelHelper.last_name }
    email { ModelHelper.email("#{first_name} #{last_name}") }
    password 'password'
  end
end

