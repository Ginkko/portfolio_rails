FactoryGirl.define do

  factory(:user) do
    email('admin@admin.com')
    password('123456789')
    password_confirmation('123456789')
    admin?(true)
  end

  factory(:post) do
    name('Test Post')
    description('Test Description')
  end

  factory(:comment) do
    description('Test Comment')
  end
end
