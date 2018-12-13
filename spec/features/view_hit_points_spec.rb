feature 'View hit points' do
  scenario 'see hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Chris'
    fill_in :player_2_name, with: 'Dan'
    click_button 'Submit'
    expect(page).to have_content 'Chris hit points: 100'
  end
end
