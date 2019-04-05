feature 'submits choice' do
  scenario 'Player 1 submits choice' do
    visit('/')
    fill_in :choice, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You chose: Rock. Please wait for player 2 to chose'
  end
end
