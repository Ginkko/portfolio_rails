require 'rails_helper'

describe "the add a project process" do
  it "adds a new project" do
    visit '/'
    click_on "New Project"
    fill_in 'Name', with: 'Youhole.tv'
    click_on 'Create Project'
    expect(page).to have_content 'Youhole.tv'
  end

  it "returns an error when no name is entered" do
    visit new_project_path
    click_on "Create Project"
    expect(page).to have_content 'You done messed up'
  end
end
