# As a user
# So that I can let people know what I think of a film
# I want to add a comment to the film rating

feature 'Add a comment to a film' do
  scenario 'user can add a comment to a film' do
    visit("/")
    add_film_with_rating("Inception", "9")
    comment = "This is a comment about the film that has been reviewed,
      its got a bunch of text and some numbers!! 012345"
    click_button("comment-Inception")
    fill_in('comment', with: comment)
    click_button("Submit")

    expect(page).to have_content(comment)
  end

  # DO THIS DO THIS DO THIS
  xscenario 'user can add a comment that inludes single quotation punctuation' do
    visit("/")
    add_film_with_rating("Inception", "9")
    # Setup
    comment = "This is a comment about the film that has been reviewed,
      it's got a bunch of text and some numbers!! 012345"
    # Exercise
    click_button("comment-Inception")
    fill_in('comment', with: comment)
    click_button("Submit")
    # Verify
    expect(page).to have_content(comment)
  end
end
