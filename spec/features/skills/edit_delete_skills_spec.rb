require 'rails_helper'

describe "delete or edit a skill process" do

  it "deletes a skill" do
    user = FactoryGirl.create(:user)
    log_in
    visit new_skill_path
    fill_in 'Name', with: "Test Skill"
    fill_in 'Description', with: "Test Description"
    click_on 'Create Skill'
    visit skills_path
    click_on 'Test Skill'
    click_on 'Delete'
    expect(page).to_not have_content "Test Skill"
  end

  it "edits a skill" do
    user = FactoryGirl.create(:user)
    log_in
    visit new_skill_path
    fill_in 'Name', with: "Test Skill"
    fill_in 'Description', with: "Test Description"
    click_on 'Create Skill'
    visit skills_path
    click_on 'Test Skill'
    click_on 'Edit'
    fill_in 'Name', with: 'New Name'
    click_on 'Update Skill'
    expect(page).to have_content 'New Name'
  end

end
