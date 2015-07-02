require 'rails_helper'

describe "delete or edit a project process" do

  it "deletes a project" do
    visit new_project_path
    fill_in 'Name', with: "Test Project"
    click_on 'Create Project'
    visit projects_path
    click_on 'Test Project'
    click_on 'Delete'
    expect(page).to_not have_content "Test Project"
  end

  it "edits a project" do
    visit new_project_path
    fill_in 'Name', with: "Test Project"
    click_on 'Create Project'
    visit projects_path
    click_on 'Test Project'
    click_on 'Edit'
    fill_in 'Name', with: 'New Name'
    click_on 'Update Project'
    expect(page).to have_content 'New Name'
  end

end
