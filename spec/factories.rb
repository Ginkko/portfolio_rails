FactoryGirl.define do

  factory(:user) do
    email('admin@admin.com')
    password('123456789')
    password_confirmation('123456789')
    admin?(true)
  end
end
