require 'compare'

feature 'submits choice' do
  scenario 'Player 1 submits rock and is told if they have won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit('/')
    click_button 'Submit'
    expect(page).to have_content 'Atta pal, you won'
  end
end
