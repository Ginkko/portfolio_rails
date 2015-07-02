require 'rails_helper'

describe "the add a skill process" do
  it "adds a new skill" do
    visit '/'
    click_on "New Skill"
    fill_in 'Name', with: 'Agility'
    fill_in 'Description', with: 'Agility is the ability to be quick and graceful. You might have agility on the basketball court or in the courtroom, or even with your gaming remote. The noun agility can be used for both mental and physical skills in speed and grace. Your mental agility might allow you to follow both conversations at once.'
    click_on 'Create Skill'
    expect(page).to have_content 'Agility'
  end

  it "returns an error when no name is entered" do
    visit new_skill_path
    click_on "Create Skill"
    expect(page).to have_content 'You done messed up'
  end
end
