feature 'View choice' do
  scenario 'see Player 2 choice' do
    visit('/')
    fill_in :player_1_name, with: 'Akua'
    fill_in :player_2_name, with: 'Debbie'
    click_button 'Submit'
    expect(page).to have_content 'Debbie: Rock'
  end
end
