require 'rails_helper'

describe Comment do
  it { should validate_presence_of :description }
  it { should validate_uniqueness_of :description}

  it { should belong_to :post}
  it { should belong_to :user}
end
