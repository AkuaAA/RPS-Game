def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Akua'
  fill_in :player_2_name, with: 'Debbie'
  click_button 'Submit'
end
