require 'rails_helper'

describe "the add a comment path" do
  it "adds a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user_id: user.id)
    log_in
    visit posts_path
    click_link "Test Post"
    click_on "Reply"
    fill_in "Description", with: "Test Reply"
    click_button "Create Comment"
    expect(page).to have_content 'Test Reply'
  end

  it "returns an error when no name is entered" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user_id: user.id)
    log_in
    visit new_post_comment_path(post)
    click_on "Create Comment"
    expect(page).to have_content 'You done messed up'
  end

end
