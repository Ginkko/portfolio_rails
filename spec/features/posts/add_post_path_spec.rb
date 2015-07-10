require 'rails_helper'

describe "the add a post path" do
  it "adds a post" do
    user = FactoryGirl.create(:user)
    log_in
    visit '/'
    click_link "New Post"
    fill_in "Name", with: "Test Name"
    fill_in "Description", with: "Test Description"
    click_on "Create Post"
    expect(page).to have_content 'Test Name'
  end

  it "returns an error when no name is entered" do
    user = FactoryGirl.create(:user)
    log_in
    visit new_post_path
    click_on "Create Post"
    expect(page).to have_content 'You done messed up'
  end

end
