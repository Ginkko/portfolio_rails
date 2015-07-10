require 'rails_helper'

describe "delete or edit a post process" do

  it "deletes a post" do
    user = FactoryGirl.create(:user)
    log_in
    visit new_post_path
    fill_in 'Name', with: "Test Post"
    fill_in 'Description', with: "Test description"
    click_on 'Create Post'
    visit posts_path
    click_on 'Test Post'
    click_on 'Delete'
    expect(page).to_not have_content "Test Post"
  end

  it "edits a post" do
    user = FactoryGirl.create(:user)
    log_in
    visit new_post_path
    fill_in 'Name', with: "Test Post"
    fill_in 'Description', with: "Test description"
    click_on 'Create Post'
    visit posts_path
    click_on 'Test Post'
    click_on 'Edit'
    fill_in 'Name', with: 'New Name'
    click_on 'Update Post'
    expect(page).to have_content 'New Name'
  end

end
