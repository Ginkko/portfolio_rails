require 'rails_helper'

describe "delete or edit a comment process" do

  it "deletes a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user_id: user.id)
    comment = FactoryGirl.create(:comment, user_id: user.id, post_id: post.id)
    log_in
    visit post_path(post)
    click_link "delete_comment_#{comment.id}"
    expect(page).to_not have_content "Test Comment"
  end

  it "edits a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user_id: user.id)
    comment = FactoryGirl.create(:comment, user_id: user.id, post_id: post.id)
    log_in
    visit edit_post_comment_path(post, comment)
    fill_in "Description", with: "New Comment Description"
    expect(page).to have_content 'New Comment Description'
  end

end
