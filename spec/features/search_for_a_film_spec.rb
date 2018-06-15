feature 'User can search for a film' do
  scenario 'searches for fight club' do
    visit("/search")
    fill_in('search', with: 'Fight Club')
    click_button('search')

    expect(page).to have_content("A ticking-time-bomb insomniac")
  end
end
