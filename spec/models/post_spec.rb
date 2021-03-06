require 'rails_helper'

describe Post do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name}
  it { should validate_presence_of :description}

  it { should have_many :comments }
  it { should belong_to :user}
end
