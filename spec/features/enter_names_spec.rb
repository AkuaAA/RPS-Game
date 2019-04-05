feature 'Enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Akua'
    fill_in :player_2_name, with: 'Debbie'
    click_button 'Submit'
    expect(page).to have_content 'Akua vs. Debbie'
  end
end
